struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, ~1u), ~(vec2<u32>(_wgslsmith_add_u32(1u, u_input.c), u_input.a >> (u_input.c % 32u)) | ~(vec2<u32>(u_input.c, 0u) & vec2<u32>(u_input.c, u_input.c))));
    var_0 = vec2<u32>(~_wgslsmith_add_u32(1u, u_input.c), var_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), -1591f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-110f, -1181f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(113f, 1275f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -842f)), vec2<f32>(895f, 1592f), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-108f, -290f) + vec2<f32>(336f, 1382f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2116f, -502f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(547f, -1038f) + vec2<f32>(-110f, 558f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -176f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1126f, 1490f)))))))));
    var_0 = ~_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, min(~u_input.c, var_0.x)), vec2<u32>(select(var_0.x, var_0.x, arg_0.b), var_0.x) | vec2<u32>(~7987u, max(u_input.c, 0u)));
    var var_2 = reverseBits(~1u);
    return vec2<bool>(arg_0.b | !any(select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, arg_0.b), vec2<bool>(true, true))), all(vec2<bool>(true, any(select(vec4<bool>(true, false, arg_0.b, arg_0.c), vec4<bool>(false, arg_0.b, arg_0.c, true), arg_0.c)))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-635f)) + _wgslsmith_f_op_f32(select(831f, -1074f, arg_1.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1616f * 274f), _wgslsmith_f_op_f32(-351f - 598f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-916f, 521f), vec2<f32>(-224f, 393f)))))));
    let var_1 = firstLeadingBit(~u_input.a);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f * -1295f) - var_0.x);
    let var_3 = -1038f;
    let var_4 = var_0;
    return func_3(arg_2);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, max(u_input.c, arg_2.b.x)), ~min(arg_2.b.xw, arg_2.b.ww), max(vec2<u32>(142512u, 1u) | arg_2.b.xw, max(arg_2.b.zw, vec2<u32>(7285u, arg_2.b.x)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~arg_2.b, ~arg_2.b), abs(abs(u_input.a)))), vec4<u32>(54673u, u_input.c, arg_2.b.x, u_input.a), _wgslsmith_sub_i32(-13170i, arg_2.c), any(vec3<bool>(true, arg_0.x | arg_2.d, arg_1.b || arg_2.d)), !(!arg_2.e));
    var var_1 = -(28441i & var_0.c);
    var var_2 = arg_1.a.wxy;
    var var_3 = var_0;
    var_3 = Struct_1(_wgslsmith_dot_vec4_u32(~abs(var_0.b), abs(vec4<u32>(66779u, ~arg_2.b.x, ~40332u, ~var_0.a))), _wgslsmith_sub_vec4_u32(vec4<u32>(~firstTrailingBit(26610u), _wgslsmith_clamp_u32(arg_2.b.x >> (0u % 32u), _wgslsmith_mod_u32(var_0.a, u_input.c), ~4294967295u), 4294967295u, _wgslsmith_add_u32(var_3.a, 52148u)), _wgslsmith_add_vec4_u32(firstLeadingBit(var_3.b), ~vec4<u32>(1u, u_input.a, 18928u, var_0.b.x)) & abs(vec4<u32>(4294967295u, 112397u, u_input.a, 11300u))), arg_2.c, ~0u != (0u | _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, arg_2.a), vec2<u32>(var_3.b.x, var_0.b.x)), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(66660u, u_input.a)))), vec2<bool>(func_2(var_3.c, arg_2, Struct_2(abs(vec4<i32>(arg_1.a.x, 56564i, arg_2.c, var_3.c)), func_3(arg_1).x, 44991i >= var_2.x)).x, !all(arg_2.e)));
    return Struct_2(arg_1.a, arg_2.d, arg_0.x);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> Struct_2 {
    let var_0 = func_4(select(func_2(~(~2147483647i), Struct_1(1u, vec4<u32>(arg_2.x, 0u, u_input.c, u_input.a), -56252i, arg_2.x > u_input.a, select(vec2<bool>(arg_0.c, false), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, arg_0.c))), arg_0), !(!vec2<bool>(arg_0.b, false)), all(!(!vec2<bool>(arg_0.c, arg_0.b)))), Struct_2(select(reverseBits(~arg_0.a), arg_0.a, !vec4<bool>(true, arg_0.b, false, arg_0.c)), false, !arg_0.b), Struct_1(arg_2.x, vec4<u32>(reverseBits(arg_2.x), u_input.c, _wgslsmith_sub_u32(26031u, u_input.a), 4294967295u) | vec4<u32>(~arg_2.x, ~arg_2.x, arg_2.x, ~arg_2.x), 0i >> (~u_input.c % 32u), arg_0.b, !(!(!vec2<bool>(true, arg_0.c)))));
    var var_1 = Struct_2(~(select(vec4<i32>(arg_0.a.x, var_0.a.x, 1i, 0i), -vec4<i32>(40941i, arg_1, arg_3, -4552i), select(vec4<bool>(var_0.b, false, arg_0.c, true), vec4<bool>(false, var_0.c, false, arg_0.b), vec4<bool>(false, false, var_0.c, false))) ^ _wgslsmith_clamp_vec4_i32(arg_0.a, -var_0.a, var_0.a)), !func_4(func_2(arg_0.a.x, Struct_1(9013u, arg_2, -2147483647i, true, vec2<bool>(false, arg_0.b)), var_0), func_4(vec2<bool>(arg_0.b, arg_0.c), Struct_2(vec4<i32>(var_0.a.x, 2147483647i, -36013i, -2147483647i), true, var_0.c), Struct_1(arg_2.x, arg_2, -50119i, var_0.b, vec2<bool>(false, arg_0.b))), Struct_1(select(u_input.a, 0u, false), arg_2 << (arg_2 % vec4<u32>(32u)), u_input.d, var_0.c, vec2<bool>(var_0.c, var_0.b))).c, select(-(~u_input.b) <= ~0i, -1510f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2223f))), (u_input.d > _wgslsmith_add_i32(arg_0.a.x, -43019i)) & false));
    var var_2 = 1101f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-625f))), 1f));
    let var_3 = true;
    return func_4(vec2<bool>(true, !var_1.b), func_4(select(vec2<bool>(func_4(vec2<bool>(arg_0.c, var_3), arg_0, Struct_1(u_input.c, vec4<u32>(arg_2.x, 1u, u_input.a, 1u), var_1.a.x, var_0.b, vec2<bool>(true, var_0.c))).b, true), !select(vec2<bool>(var_3, var_3), vec2<bool>(var_0.c, var_0.b), vec2<bool>(true, var_0.b)), !func_2(-18606i, Struct_1(46946u, vec4<u32>(43632u, arg_2.x, 0u, u_input.c), -2147483647i, false, vec2<bool>(arg_0.c, var_3)), arg_0)), var_0, Struct_1(_wgslsmith_sub_u32(37347u & arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 0u, ~arg_2.x, 8998u), -(-53256i << (arg_2.x % 32u)), true, vec2<bool>(true, true))), Struct_1(max(arg_2.x, arg_2.x), vec4<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c, 1u), 8924u, ~0u) & reverseBits(arg_2), reverseBits(var_1.a.x), true, vec2<bool>(arg_0.b, true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.d, func_1(Struct_2(arg_0.a, true, arg_1.d), 68236i, arg_1.b, -2147483647i).a.x), vec2<i32>(u_input.b, ~arg_0.a.x)), _wgslsmith_mult_vec2_i32((arg_0.a.wx & arg_0.a.xy) & arg_0.a.xy, max(vec2<i32>(43213i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-35935i, 19706i), vec2<i32>(0i, -23721i))))), ~arg_1.c, -arg_0.a.x);
    let var_1 = select(vec4<bool>(func_2(i32(-1i) * -1i, Struct_1(~9005u, abs(arg_1.b), _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x), true, !vec2<bool>(arg_1.e.x, true)), Struct_2(arg_0.a, func_3(arg_0).x, 44118u != arg_1.a)).x, firstTrailingBit(arg_1.c) <= arg_1.c, arg_1.e.x, any(select(arg_2.yy, vec2<bool>(true, arg_1.e.x), arg_2.yz)) || func_1(Struct_2(arg_0.a, true, false), 0i, vec4<u32>(1u, 31330u, 15160u, u_input.c), -arg_0.a.x).b), vec4<bool>((max(u_input.c, u_input.a) > arg_1.b.x) || any(vec2<bool>(true, false)), arg_0.b, true, arg_2.x), true);
    var var_2 = Struct_1(0u, vec4<u32>(56628u, _wgslsmith_dot_vec2_u32(min(~vec2<u32>(arg_1.a, u_input.c), vec2<u32>(1u, u_input.c)), countOneBits(countOneBits(vec2<u32>(u_input.c, 23283u)))), min(min(_wgslsmith_mod_u32(arg_1.b.x, u_input.a), ~u_input.c), countOneBits(max(0u, 4294967295u))), arg_1.a), u_input.d, true, vec2<bool>(false, !arg_2.x));
    var var_3 = arg_0;
    let var_4 = Struct_2(vec4<i32>(49688i, -var_3.a.x, 9318i, var_2.c), (func_2(~23423i, arg_1, Struct_2(var_3.a, false, var_3.b)).x & false) & all(!vec3<bool>(var_3.b, true, var_2.e.x)), true);
    return abs(vec3<u32>(_wgslsmith_clamp_u32(1u << (var_2.a % 32u), abs(var_2.a), arg_1.a), ~0u, 2610u) | vec3<u32>(u_input.a | _wgslsmith_mod_u32(var_2.a, 43344u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 54453u, 1u, arg_1.a), vec4<u32>(arg_1.b.x, var_2.b.x, 19329u, u_input.c)), _wgslsmith_dot_vec3_u32(~var_2.b.xzy, _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.a, arg_1.a, 4294967295u), var_2.b.zyx))));
}

fn func_6(arg_0: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-454f))) - 1499f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f)))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(min(-3083f, -211f))) + _wgslsmith_f_op_f32(f32(-1f) * -1377f)) - _wgslsmith_f_op_f32(f32(-1f) * -404f)));
    let var_1 = Struct_1(firstLeadingBit(~16018u), vec4<u32>(1u, min(1u, ~(~30808u)), u_input.c, 1u), ~29719i, true, !vec2<bool>(any(vec2<bool>(true, true)), func_1(func_1(Struct_2(vec4<i32>(-1i, u_input.b, 2147483647i, 57707i), true, false), 2147483647i, vec4<u32>(arg_0.x, u_input.a, 0u, u_input.a), u_input.b), 10633i, countOneBits(vec4<u32>(u_input.a, 1u, arg_0.x, 4294967295u)), u_input.d).b));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(692f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(792f)), _wgslsmith_f_op_f32(104f - -208f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-449f)), _wgslsmith_f_op_f32(trunc(-1958f)))), _wgslsmith_f_op_f32(-186f + _wgslsmith_f_op_f32(f32(-1f) * -469f))))));
    let var_3 = Struct_2(select(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(43560i, 9424i, u_input.b, 0i)), ~func_1(Struct_2(vec4<i32>(4731i, 6752i, u_input.d, -2077i), var_1.d, true), u_input.b, vec4<u32>(arg_0.x, u_input.c, 564u, 67129u), u_input.d).a, _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_1.c, 0i, u_input.b) | vec4<i32>(var_1.c, 1i, -2147483647i, 36929i), firstLeadingBit(vec4<i32>(var_1.c, var_1.c, -1i, u_input.b)))), vec4<i32>(-firstLeadingBit(14234i), max(-1i, 67061i), -(u_input.d ^ u_input.b), _wgslsmith_mult_i32(-8958i, ~(-27710i))), select(vec4<bool>(true, all(vec3<bool>(var_1.e.x, false, var_1.e.x)), true, var_1.d), select(vec4<bool>(var_1.e.x, var_1.d, false, var_1.e.x), !vec4<bool>(true, var_1.e.x, true, var_1.e.x), var_1.e.x), vec4<bool>(var_1.c < var_1.c, true, true, !var_1.e.x))), _wgslsmith_add_u32(1u, arg_0.x) <= 0u, var_1.e.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(reverseBits(vec4<i32>(reverseBits(2147483647i), 2147483647i, -2147483647i, 31710i)), true, true == any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(~(4294967295u >> (u_input.c % 32u)), u_input.c, _wgslsmith_div_u32(u_input.c, ~u_input.a & u_input.a)), vec4<u32>(12407u, u_input.a, u_input.c | u_input.a, func_6(func_5(func_1(Struct_2(vec4<i32>(-1i, u_input.b, u_input.b, 1i), false, true), 2147483647i, vec4<u32>(1u, u_input.c, 0u, 4294967295u), u_input.d), Struct_1(100032u, vec4<u32>(u_input.a, 59879u, 9197u, 1u), -2147483647i, false, vec2<bool>(false, true)), vec3<bool>(true, true, var_0.c)))), -1i, !(var_0.c & (var_0.c || false)), !vec2<bool>(all(select(vec4<bool>(true, false, var_0.b, false), vec4<bool>(true, var_0.c, var_0.b, false), vec4<bool>(true, var_0.c, var_0.b, true))), func_2(2147483647i, Struct_1(u_input.c, vec4<u32>(u_input.c, 87703u, 3932u, 56052u), u_input.b, var_0.c, vec2<bool>(false, var_0.b)), Struct_2(var_0.a, false, var_0.b)).x || !var_0.c));
    var_0 = func_4(!var_1.e, func_1(func_1(func_1(Struct_2(vec4<i32>(2147483647i, 1i, -8100i, -2147483647i), false, true), 0i, var_1.b, -14050i), abs(~(-1i)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 38237u, u_input.a, 0u), ~var_1.b), -(34398i << (1u % 32u))), var_1.c, select(~var_1.b, vec4<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(var_1.b.wz, var_1.b.yw), ~var_1.a, min(var_1.b.x, u_input.a)), false), -81751i), Struct_1(~1u, vec4<u32>(u_input.a, u_input.a, 1u, ~_wgslsmith_clamp_u32(19200u, 0u, u_input.c)), _wgslsmith_sub_i32(firstLeadingBit(var_0.a.x), var_1.c), var_0.c & var_0.c, vec2<bool>(func_4(func_3(Struct_2(var_0.a, var_0.c, false)), func_1(Struct_2(var_0.a, false, var_1.d), -54i, vec4<u32>(var_1.a, 4294967295u, var_1.b.x, 1u), var_0.a.x), var_1).b, any(!vec4<bool>(var_0.b, var_1.e.x, var_1.e.x, true)))));
    let var_2 = ~select(var_1.b.xw, _wgslsmith_clamp_vec2_u32(vec2<u32>(reverseBits(1u), 19423u | var_1.b.x), ~var_1.b.ww, _wgslsmith_clamp_vec2_u32(select(var_1.b.zw, vec2<u32>(28673u, 4294967295u), true), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 19245u), var_1.b.xz, var_1.b.xy), vec2<u32>(1u, 1u))), !var_1.e);
    var var_3 = ~(_wgslsmith_mult_vec2_u32(countOneBits(var_2 | var_2), _wgslsmith_div_vec2_u32(var_1.b.xx, _wgslsmith_mult_vec2_u32(var_2, vec2<u32>(4294967295u, 0u)))) << (vec2<u32>(func_5(Struct_2(vec4<i32>(-10724i, var_0.a.x, 1i, u_input.b), var_0.b, var_1.d), var_1, vec3<bool>(var_1.d, var_1.e.x, var_0.c)).x << (var_1.b.x % 32u), var_1.b.x) % vec2<u32>(32u)));
    var_0 = Struct_2(vec4<i32>(var_1.c, var_0.a.x, _wgslsmith_sub_i32(var_1.c, var_1.c), i32(-1i) * -68533i), true, var_0.c);
    var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, var_1.a), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(-259f);
}

