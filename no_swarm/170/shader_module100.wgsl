struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> vec3<bool> {
    var var_0 = 13895u;
    let var_1 = vec4<i32>(min(u_input.b, select(countOneBits(u_input.b ^ 1i), _wgslsmith_clamp_i32(u_input.b, -u_input.b, ~(-7534i)), arg_1 | arg_1)), u_input.b << (73410u % 32u), select(u_input.b, abs(~countOneBits(5784i)), all(!(!vec3<bool>(arg_1, true, arg_1)))), _wgslsmith_clamp_i32(u_input.b, -(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), -(~1i) | _wgslsmith_sub_i32(u_input.b | -2147483647i, -25001i)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f)));
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(var_1.zx, var_1.zz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, var_2, var_2, var_2))))), arg_1, _wgslsmith_add_vec3_i32(var_1.zwx, ~var_1.zyx), abs(2147483647i));
    var_0 = ~(~u_input.a);
    return !(!vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, arg_1), arg_1)), !(u_input.c >= u_input.d.x), var_3.c));
}

fn func_4(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(872f, -821f), -2288f, _wgslsmith_f_op_f32(f32(-1f) * -1364f))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(floor(-1044f)), 1663f, 1465f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(262f, 1174f)), _wgslsmith_f_op_f32(892f - 190f), _wgslsmith_f_op_f32(ceil(1087f))) * vec3<f32>(_wgslsmith_f_op_f32(abs(-877f)), _wgslsmith_div_f32(-1490f, -191f), 900f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -239f)))), _wgslsmith_f_op_f32(min(var_0.x, -465f)), 1007f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(563f * var_0.x))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(554f, -642f, 127f) * vec3<f32>(-1000f, var_0.x, -1030f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, 1146f, var_0.x), vec3<f32>(-697f, var_0.x, var_0.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1033f, -334f, var_0.x) - vec3<f32>(var_0.x, 1230f, var_0.x))))))), any(arg_0)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -398f, var_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -1314f), vec4<f32>(var_0.x, var_0.x, -393f, var_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_1.x, -1659f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-966f, -360f, 1284f, var_0.x), vec4<f32>(-1099f, -325f, -176f, -837f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(step(536f, var_0.x)), var_1.x, var_0.x, _wgslsmith_f_op_f32(floor(-652f)))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zyz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.wyw, var_1.zyx)) * _wgslsmith_f_op_vec3_f32(var_1.yyz * vec3<f32>(var_1.x, -2003f, var_0.x))))), var_1.wxx);
    return !arg_0.xx;
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.b, -2182i) & -52301i, max(1i, u_input.b)), ~_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-12098i, -11824i)), vec2<i32>(0i, u_input.b))), 3235i, 2568i, u_input.b);
    var var_1 = select(func_4(select(vec3<bool>(false, true, u_input.e < u_input.d.x), select(func_3(vec2<f32>(382f, 2478f), true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true))), !func_3(vec2<f32>(1255f, _wgslsmith_f_op_f32(min(667f, -1000f))), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1165f, -821f)), all(vec2<bool>(false, true))).x).zx, vec2<bool>(true, true));
    var_1 = select(!(!(!vec2<bool>(var_1.x, var_1.x))), func_4(!(!vec3<bool>(var_1.x, true, var_1.x))), false);
    var_1 = select(select(vec2<bool>(true, var_1.x), !(!func_3(vec2<f32>(-354f, 1000f), false).yx), vec2<bool>(!var_1.x, true && var_1.x)), vec2<bool>(var_1.x, true), !(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(10948i, 1i, 3540i, 1i)), vec4<i32>(u_input.b, var_0.x, var_0.x, var_0.x)) != 0i));
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-21856i, u_input.b), _wgslsmith_mod_vec2_i32(var_0.xx, vec2<i32>(var_0.x, u_input.b)), ~var_0.yz)) | vec2<i32>(1i, 42052i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, -167f, 348f, -115f) - vec4<f32>(438f, 611f, 1825f, 807f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(197f, 2230f, -1000f, 1138f))), vec4<f32>(812f, 1000f, 679f, 403f)))), var_1.x, var_0.xyy, _wgslsmith_dot_vec2_i32(vec2<i32>(7673i, u_input.b) >> ((u_input.d | max(vec2<u32>(95579u, 4294967295u), vec2<u32>(1u, 1u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(min(-2147483647i, var_0.x), ~u_input.b), max(abs(var_0.zw), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(16624i, var_0.x))))));
    return Struct_1(-(vec2<i32>(-1i) * -vec2<i32>(u_input.b, 17555i)), _wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2.b, var_2.b))))), !(!any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_2.c, var_1.x, true), var_1.x))), select(var_0.wzx, var_0.zwz, false), -u_input.b);
}

fn func_1() -> Struct_2 {
    let var_0 = vec3<bool>(true, true, all(vec4<bool>(u_input.c < _wgslsmith_div_u32(1u, 1u), true, true, any(vec4<bool>(true, true, true, true)))));
    let var_1 = func_2();
    let var_2 = vec2<f32>(-1937f, var_1.b.x);
    let var_3 = !(!(!var_0.x == true));
    let var_4 = u_input.c;
    return Struct_2(vec3<bool>(var_0.x, any(func_4(var_0)), true));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = 23620i;
    var var_1 = arg_2.d << (firstTrailingBit(abs(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, u_input.d.x, u_input.c)), vec3<u32>(u_input.e, 1u, u_input.a)))) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_mod_vec2_i32(~arg_3.d.xx, vec2<i32>(var_1.x, min(_wgslsmith_div_i32(arg_3.e, var_1.x), -72975i))), _wgslsmith_div_vec4_f32(arg_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, _wgslsmith_f_op_f32(floor(arg_2.b.x)), -797f, _wgslsmith_div_f32(arg_2.b.x, arg_3.b.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_2.b)) + _wgslsmith_f_op_vec4_f32(-arg_3.b)))), true, vec3<i32>(_wgslsmith_add_i32(u_input.b, ~_wgslsmith_clamp_i32(u_input.b, 32512i, arg_0)), var_1.x, ~abs(_wgslsmith_mult_i32(-24305i, arg_0))), ~(-14037i & _wgslsmith_dot_vec3_i32(arg_3.d, vec3<i32>(0i, arg_2.e, var_1.x) >> (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u)))));
    var var_3 = Struct_1(~(~countOneBits(~var_1.zx)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2175f, arg_3.b.x, -1433f, _wgslsmith_f_op_f32(-2048f * -661f)) + vec4<f32>(2224f, arg_3.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1387f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f + arg_2.b.x) - _wgslsmith_f_op_f32(sign(-722f))))), select(all(vec3<bool>(arg_3.c, false, any(vec2<bool>(false, arg_1.a.x)))), !(arg_3.c | arg_1.a.x), firstLeadingBit(1385u) != u_input.c), vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_2.a.x, -1i, arg_3.a.x, 15315i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, arg_3.d.x, -39296i, 0i), vec4<i32>(var_2.a.x, arg_0, arg_3.d.x, var_2.a.x))), -arg_0, -3312i) >> (~(~vec3<u32>(65664u, 1u, 1u)) % vec3<u32>(32u)), ~abs(1i));
    let var_4 = vec4<bool>(!arg_3.c, false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b.x - _wgslsmith_f_op_f32(-arg_3.b.x)))) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1307f - arg_2.b.x) + _wgslsmith_f_op_f32(min(-693f, arg_3.b.x))))), all(arg_1.a.xx));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<u32> {
    let var_0 = ~_wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 18310u, 16886u), vec3<u32>(u_input.c, 4294967295u, u_input.a))), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.e, 14227u, 0u) >> ((vec3<u32>(u_input.e, 0u, u_input.a) << (vec3<u32>(1u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(countOneBits(u_input.c), u_input.c, u_input.a)));
    var var_1 = vec2<u32>(0u, abs(u_input.e));
    var_1 = vec2<u32>(0u, ~var_1.x);
    var var_2 = 2147483647i;
    var var_3 = vec2<u32>(~21622u, 29843u);
    return vec2<u32>(var_0, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(func_6(func_5(18002i, func_1(), func_2(), func_2()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(260f, 1755f, -1019f, -1688f) + vec4<f32>(-568f, 1000f, -1661f, -512f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1808f, -1362f, -942f, 1000f) + vec4<f32>(1529f, 373f, 1050f, 140f)))) | vec2<u32>(u_input.e, u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(513f + 610f), _wgslsmith_f_op_f32(sign(-544f)), false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1456f, 337f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1264f + 453f), func_2().b.x)))));
    var_0 = abs(u_input.d);
    let var_2 = func_1();
    var_0 = (_wgslsmith_mod_vec2_u32(~select(vec2<u32>(var_0.x, 66205u), vec2<u32>(u_input.a, var_0.x), vec2<bool>(var_2.a.x, var_2.a.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 17375u), vec2<u32>(0u, 1u)), var_0.x >> (1u % 32u))) & vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 0u, 71186u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, u_input.e, 0u), vec3<u32>(1u, 24902u, var_0.x))), 4294967295u)) >> (abs(u_input.d) % vec2<u32>(32u));
    var var_3 = var_2.a.x;
    let var_4 = Struct_2(vec3<bool>(!var_2.a.x || func_4(var_2.a).x, any(select(vec3<bool>(false, var_2.a.x, var_2.a.x), var_2.a, 1u >= var_0.x)), !func_4(select(var_2.a, vec3<bool>(var_2.a.x, true, true), vec3<bool>(var_2.a.x, true, false))).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -2239f)), var_1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-340f - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(select(-1344f, 1000f, true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -372f) * func_2().b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(736f))))), 2147483647i);
}

