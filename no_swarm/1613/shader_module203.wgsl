struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> u32 {
    let var_0 = select(reverseBits(-select(abs(vec2<i32>(u_input.a.x, 2147483647i)), -arg_0.yx, !arg_1.zw)), select(u_input.a.yy, _wgslsmith_div_vec2_i32(u_input.a.yz, max(countOneBits(vec2<i32>(arg_0.x, arg_0.x)), u_input.a.zx)), arg_1.x), !arg_1.x);
    var var_1 = _wgslsmith_mod_u32(~25793u, 1u);
    var_1 = 1u;
    var var_2 = Struct_2(select(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 40598u, 0u), vec4<u32>(1u, 1u, 1u, 1u))), ~vec4<u32>(1u, ~74265u, 1u, 85956u), select(any(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)), !arg_1.x, all(!arg_1.wxz))), Struct_1(select(select(vec3<i32>(u_input.c.x, 2147483647i, -2147483647i) & vec3<i32>(-2147483647i, -53160i, arg_0.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.b), vec3<i32>(0i, arg_0.x, -48318i)), arg_1.wzz), arg_0, !(!arg_1.x)), arg_1.yz, _wgslsmith_f_op_f32(floor(-1000f)), ~vec3<i32>(~var_0.x, -13323i, -16680i)), arg_1.xw);
    let var_3 = Struct_2(vec4<u32>(4294967295u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1212u, 4294967295u, 4294967295u), var_2.a.wwz)), 4294967295u, var_2.a.x), var_2.b, vec2<bool>(_wgslsmith_mult_i32(-var_2.b.d.x, _wgslsmith_dot_vec3_i32(var_2.b.a, vec3<i32>(29579i, var_2.b.a.x, 1i))) <= 2147483647i, arg_1.x));
    return var_2.a.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = firstTrailingBit(-(~(-15540i)));
    let var_1 = Struct_2(countOneBits(~vec4<u32>(~arg_1.a.x, 1u << (arg_1.a.x % 32u), 85836u, 1u)), arg_1.b, !(!select(!arg_1.b.b, select(arg_1.c, arg_1.c, arg_1.c.x), arg_1.b.b)));
    let var_2 = arg_1.a.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1214f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-929f * arg_1.b.c) - -659f) + 441f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(var_1.b.c * _wgslsmith_f_op_f32(-var_1.b.c))));
    var var_4 = arg_1;
    return Struct_3(select(var_1.b.b, vec2<bool>(var_1.b.b.x, func_3(vec3<i32>(2147483647i, var_1.b.d.x, -1i), vec4<bool>(true, true, arg_1.c.x, false)) < abs(10202u)), vec2<bool>(~2147483647i >= arg_1.b.a.x, _wgslsmith_add_u32(0u, var_2) == arg_1.a.x)), ~(~4294967295u), 1392f, -vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, 0i, -33002i, var_1.b.a.x), vec4<i32>(-2147483647i, 23264i, var_1.b.d.x, 34164i)), ~_wgslsmith_clamp_i32(u_input.b, -104267i, 2147483647i), 1i, u_input.c.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = arg_1.c;
    var var_1 = Struct_1(select(~vec3<i32>(-u_input.c.x, firstLeadingBit(-1i), -arg_0.x), firstTrailingBit(-(~u_input.a)), select(!(!vec3<bool>(false, arg_1.a.x, true)), vec3<bool>(false, -2027f != var_0, arg_1.a.x), arg_1.a.x)), vec2<bool>(any(select(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(arg_1.a.x, true, arg_1.a.x), vec3<bool>(false, false, true)), !arg_1.a.x)), 1f > _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-arg_1.c), ~(_wgslsmith_add_vec3_i32(arg_0.wyx, arg_1.d.yxz) >> (vec3<u32>(0u, arg_2, 1u) % vec3<u32>(32u))));
    var_1 = Struct_1(min(_wgslsmith_clamp_vec3_i32(arg_0.yyy, ~(var_1.d & arg_0.xww), vec3<i32>(1i, -76049i, arg_1.d.x) >> (select(vec3<u32>(69087u, arg_1.b, 5101u), vec3<u32>(1u, 0u, 4294967295u), vec3<bool>(arg_1.a.x, true, false)) % vec3<u32>(32u))), var_1.d), vec2<bool>(!any(!vec3<bool>(var_1.b.x, false, arg_1.a.x)), var_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(569f, _wgslsmith_f_op_f32(exp2(1f))))), (~vec3<i32>(23091i, var_1.a.x, var_1.a.x) >> (~vec3<u32>(1u, arg_2, 11246u) % vec3<u32>(32u))) & arg_1.d.xyx);
    var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(-vec3<i32>(arg_1.d.x, arg_1.d.x, u_input.a.x), ~select(u_input.a, var_1.d, vec3<bool>(true, true, var_1.b.x)), u_input.a) >> (countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(41405u, arg_2, arg_2), firstTrailingBit(vec3<u32>(arg_2, arg_1.b, 0u)), countOneBits(vec3<u32>(arg_1.b, arg_1.b, arg_1.b)))) % vec3<u32>(32u)), !(!(!arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1670f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-182f - 433f) * -708f))), ~_wgslsmith_clamp_vec3_i32(-var_1.d | ~u_input.a, vec3<i32>(_wgslsmith_div_i32(-19525i, 51693i), max(-1i, 2147483647i), func_2(vec4<u32>(4294967295u, arg_1.b, arg_2, 0u), Struct_2(vec4<u32>(1u, arg_2, arg_1.b, arg_1.b), Struct_1(vec3<i32>(u_input.c.x, -13677i, arg_0.x), arg_1.a, 993f, u_input.a), vec2<bool>(true, false))).d.x), vec3<i32>(~arg_0.x, _wgslsmith_mod_i32(1i, u_input.b), -4506i & arg_1.d.x)));
    var_1 = Struct_1(vec3<i32>(u_input.c.x, var_1.a.x, u_input.c.x), vec2<bool>(!all(select(vec4<bool>(true, var_1.b.x, arg_1.a.x, false), vec4<bool>(true, false, arg_1.a.x, true), vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, arg_1.a.x))), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3932f * arg_1.c)), _wgslsmith_div_vec3_i32(vec3<i32>(37765i, u_input.b, 1i), vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.d, ~vec3<i32>(arg_0.x, -2147483647i, arg_0.x)), 0i, 2147483647i)));
    return _wgslsmith_add_i32(~var_1.a.x, _wgslsmith_add_i32(var_1.d.x, arg_0.x));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = all(select(select(vec3<bool>(arg_2 || false, arg_0.b.x, all(vec3<bool>(arg_1.b.b.x, arg_1.b.b.x, true))), vec3<bool>(false || arg_2, any(arg_1.c), false), !(-2596f < arg_0.c)), vec3<bool>(false, !arg_1.c.x, any(!vec3<bool>(false, false, arg_0.b.x))), select(vec3<bool>(true, arg_2, !arg_2), select(vec3<bool>(arg_0.b.x, arg_1.b.b.x, arg_1.c.x), !vec3<bool>(true, arg_1.b.b.x, true), true), arg_2)));
    let var_1 = _wgslsmith_add_i32(arg_1.b.d.x, ~u_input.c.x);
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(arg_1.a.wwx), arg_1.a.ywz), vec3<u32>(arg_1.a.x >> (4294967295u % 32u), arg_1.a.x, _wgslsmith_sub_u32(arg_1.a.x, 4294967295u)))), arg_1.a.x);
    let var_3 = _wgslsmith_add_u32(var_2, ~(_wgslsmith_add_u32(min(1u, 96370u), ~var_2) ^ var_2));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.c, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1683f, 1000f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(1000f, arg_1.b.c), _wgslsmith_f_op_f32(f32(-1f) * -1468f)), _wgslsmith_div_vec2_f32(vec2<f32>(688f, arg_0.c), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.b.c, arg_0.c), vec2<f32>(arg_1.b.c, 1675f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.c, arg_1.b.c) * vec2<f32>(arg_0.c, arg_0.c)), vec2<f32>(-700f, -1065f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, arg_1.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-966f, -755f))))));
    return arg_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    var var_0 = func_5(Struct_1(abs(_wgslsmith_sub_vec3_i32(~arg_2.d.zwx, -u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_f32(arg_2.c + 820f), vec3<i32>(-25295i, 2147483647i, func_4(-vec4<i32>(-21473i, u_input.c.x, 1760i, arg_1.b.a.x), func_2(arg_0, Struct_2(vec4<u32>(arg_0.x, 4294967295u, arg_2.b, arg_1.a.x), arg_1.b, vec2<bool>(false, arg_2.a.x))), ~arg_1.a.x))), arg_1, arg_1.c.x);
    var var_1 = arg_2.c;
    var var_2 = arg_1;
    var var_3 = Struct_2(var_2.a, func_5(var_0.b, func_5(func_5(var_0.b, arg_1, true).b, func_5(Struct_1(arg_2.d.xyz, vec2<bool>(var_0.c.x, arg_1.b.b.x), var_2.b.c, vec3<i32>(arg_2.d.x, -36300i, var_2.b.a.x)), arg_1, all(vec2<bool>(false, true))), (var_2.a.x >> (63300u % 32u)) <= ~4737u), var_2.c.x).b, arg_2.a);
    let var_4 = var_3.a.x;
    return ~firstTrailingBit(1u);
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32((abs(vec4<u32>(4294967295u, 24002u, arg_1.x, arg_1.x)) >> ((vec4<u32>(arg_0.x, 29323u, arg_1.x, 88u) >> (vec4<u32>(arg_0.x, arg_1.x, 1u, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u))) & select(func_5(Struct_1(u_input.a, vec2<bool>(false, true), 224f, u_input.a), Struct_2(vec4<u32>(19596u, 1u, 1u, arg_0.x), Struct_1(u_input.a, vec2<bool>(true, true), -1476f, u_input.a), vec2<bool>(true, true)), true).a, ~vec4<u32>(arg_0.x, 0u, 4294967295u, arg_0.x), all(vec3<bool>(true, true, true))), reverseBits(vec4<u32>(5833u, 4294967295u, arg_0.x, arg_0.x) >> (vec4<u32>(arg_0.x, 1u, arg_0.x, arg_1.x) % vec4<u32>(32u)))), Struct_1(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b) | vec3<i32>(64932i, -8908i, u_input.a.x), select(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.b, 0i), vec3<bool>(true, true, true)), abs(vec3<i32>(u_input.c.x, 0i, u_input.c.x))), !func_2(~vec4<u32>(arg_0.x, 3781u, 4294967295u, 37965u), Struct_2(vec4<u32>(arg_1.x, arg_0.x, 0u, arg_1.x), Struct_1(vec3<i32>(-10322i, u_input.b, u_input.b), vec2<bool>(false, true), 1836f, vec3<i32>(u_input.b, u_input.a.x, -18221i)), vec2<bool>(false, true))).a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -277f))), -_wgslsmith_add_vec3_i32(func_2(vec4<u32>(79405u, arg_0.x, 0u, arg_0.x), Struct_2(vec4<u32>(99567u, arg_1.x, 1u, arg_0.x), Struct_1(u_input.a, vec2<bool>(false, false), 768f, u_input.a), vec2<bool>(true, false))).d.zwz, _wgslsmith_sub_vec3_i32(vec3<i32>(21627i, u_input.a.x, u_input.c.x), u_input.a))), vec2<bool>(!(false || any(vec4<bool>(false, true, true, true))), false));
    var_0 = func_5(Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(func_5(Struct_1(vec3<i32>(23476i, -17026i, 8392i), var_0.b.b, -980f, vec3<i32>(var_0.b.a.x, var_0.b.d.x, var_0.b.d.x)), Struct_2(var_0.a, var_0.b, var_0.c), var_0.c.x).b.d.x, var_0.b.a.x, 7378i), abs(var_0.b.d)), func_5(var_0.b, func_5(var_0.b, Struct_2(var_0.a, var_0.b, vec2<bool>(false, true)), true), var_0.c.x).b.b, var_0.b.c, -u_input.a), Struct_2(var_0.a, func_5(var_0.b, Struct_2(~var_0.a, func_5(var_0.b, Struct_2(vec4<u32>(35640u, arg_0.x, 35557u, 1u), var_0.b, vec2<bool>(true, var_0.c.x)), true).b, vec2<bool>(false, false)), true).b, var_0.b.b), true && (var_0.b.c == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-812f)) - -575f)));
    var var_1 = func_2(~_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(arg_0.x, 5000u, 38067u, 0u), var_0.a)), firstTrailingBit(var_0.a) & var_0.a), Struct_2(var_0.a, Struct_1(var_0.b.a, vec2<bool>(var_0.b.b.x, true), _wgslsmith_f_op_f32(-var_0.b.c), vec3<i32>(~var_0.b.a.x, 18408i, -3839i)), var_0.c));
    var var_2 = func_2((~var_0.a ^ ~_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(57715u, 8501u, var_0.a.x, var_0.a.x))) << (~var_0.a % vec4<u32>(32u)), func_5(func_5(Struct_1(abs(vec3<i32>(var_1.d.x, var_0.b.a.x, 1i)), !var_0.c, _wgslsmith_f_op_f32(select(var_0.b.c, var_1.c, var_1.a.x)), var_0.b.d), func_5(Struct_1(var_1.d.xxy, vec2<bool>(var_1.a.x, true), var_1.c, vec3<i32>(-25519i, -1i, var_0.b.a.x)), func_5(Struct_1(vec3<i32>(u_input.b, var_0.b.a.x, var_1.d.x), var_1.a, var_1.c, var_1.d.xyx), Struct_2(var_0.a, var_0.b, vec2<bool>(true, true)), var_0.c.x), !var_0.c.x), _wgslsmith_f_op_f32(trunc(-962f)) != _wgslsmith_f_op_f32(-var_1.c)).b, Struct_2(vec4<u32>(var_1.b, ~var_0.a.x, var_0.a.x, ~42906u), var_0.b, !func_2(var_0.a, Struct_2(vec4<u32>(51020u, 18568u, 4294967295u, arg_1.x), var_0.b, var_0.c)).a), !var_0.b.b.x && func_5(var_0.b, Struct_2(vec4<u32>(81200u, var_0.a.x, 2293u, 4294967295u), Struct_1(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec2<bool>(false, true), 1800f, vec3<i32>(19032i, -30443i, var_1.d.x)), vec2<bool>(var_1.a.x, true)), var_1.a.x).b.b.x));
    let var_3 = var_2.a.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1058f;
    let var_1 = func_6(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~12513u, 0u), vec2<u32>(4294967295u, func_1(vec4<u32>(42851u, 1u, 27823u, 0u), Struct_2(vec4<u32>(0u, 0u, 0u, 4294967295u), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.a.x), vec2<bool>(true, false), -205f, u_input.a), vec2<bool>(false, true)), Struct_3(vec2<bool>(true, true), 4294967295u, 510f, vec4<i32>(u_input.a.x, -58246i, u_input.b, 2147483647i))))), func_2(firstTrailingBit(vec4<u32>(243u, 32492u, 4294967295u, 27160u)) ^ vec4<u32>(0u, 56171u, 4294967295u, 1u), Struct_2(max(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(0u, 0u, 79702u, 43065u)), func_5(Struct_1(u_input.a, vec2<bool>(true, false), -1367f, vec3<i32>(u_input.b, u_input.a.x, u_input.a.x)), Struct_2(vec4<u32>(4294967295u, 4294967295u, 1u, 49812u), Struct_1(vec3<i32>(u_input.c.x, u_input.a.x, u_input.b), vec2<bool>(true, false), 1533f, u_input.a), vec2<bool>(false, true)), false).b, vec2<bool>(true, true))).b), vec3<u32>(27920u, _wgslsmith_div_u32(func_3(firstLeadingBit(u_input.a), vec4<bool>(false, false, true, false)), 1u), ~52117u));
    var var_2 = vec4<bool>(var_1.b.x, !var_1.b.x, false, var_1.b.x);
    let var_3 = Struct_2(abs(~(~(~vec4<u32>(63832u, 52185u, 0u, 1u)))), var_1, vec2<bool>(true, !(-2147483647i < _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(var_1.a.x, -23423i)))));
    var_0 = var_1.c;
    let var_4 = u_input.a.zy;
    let var_5 = 50688u;
    var var_6 = var_3;
    let var_7 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-279f * -1649f), _wgslsmith_f_op_f32(f32(-1f) * -638f), _wgslsmith_f_op_f32(-var_1.c), var_6.b.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.b.c, var_3.b.c, -189f, var_3.b.c) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1128f, 1670f, var_3.b.c, -673f) - vec4<f32>(var_1.c, -2655f, -394f, var_3.b.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -286f, var_3.b.c, 1005f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), min(vec3<u32>(117702u, var_3.a.x, countOneBits(max(var_3.a.x, var_5))), vec3<u32>(select(56813u, func_3(u_input.a, vec4<bool>(var_3.c.x, var_6.b.b.x, false, var_6.c.x)), var_3.b.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_6.a.x, var_5), var_6.a.yw) & var_5, 1u)));
}

