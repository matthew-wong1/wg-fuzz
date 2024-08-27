struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    var var_0 = vec2<f32>(726f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(656f - 917f))), _wgslsmith_f_op_f32(sign(-366f)), true))));
    var var_1 = false;
    let var_2 = vec2<bool>(false, true);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -448f), 1010f, var_2.x)), _wgslsmith_f_op_f32(-533f * _wgslsmith_f_op_f32(-430f + var_0.x)))));
    var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-137f + _wgslsmith_f_op_f32(floor(-1563f)))));
    return _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 335f)));
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(func_3()), select(!any(vec2<bool>(arg_0.a, false)), true, true)))));
    var var_0 = _wgslsmith_mult_vec2_i32(select(u_input.a.ww, arg_0.b.zw, select(select(vec2<bool>(false, true), vec2<bool>(arg_0.a, true), vec2<bool>(true, true)), select(!vec2<bool>(arg_0.a, true), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, false), vec2<bool>(false, arg_0.a)), select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, true), arg_0.a)), _wgslsmith_div_f32(arg_0.c.x, -857f) >= 109f)), u_input.a.xx);
    let var_1 = true;
    var var_2 = Struct_5(select(max(4294967295u, 0u), ~max(1u, 11154u), var_1), _wgslsmith_mult_i32(var_0.x, arg_0.b.x), !all(!select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(arg_0.a, false, false, false), false)), 1u, Struct_3(Struct_2(vec3<u32>(42584u, ~4294967295u, 1u))));
    let var_3 = Struct_5(~(~firstTrailingBit(_wgslsmith_div_u32(var_2.a, 1u))), -21947i, true, var_2.a, var_2.e);
    return u_input.a.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_1(arg_0.x, -(~vec4<i32>(abs(arg_1.x), ~arg_1.x, -u_input.a.x, 12395i)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1871f + -1000f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(-1742f + 471f))))));
    var var_1 = Struct_2(min(reverseBits(~vec3<u32>(10030u, 4294967295u, 4294967295u)), countOneBits(~vec3<u32>(96858u, 27072u, 43803u))));
    var var_2 = vec3<i32>(firstTrailingBit(-2147483647i), firstTrailingBit(countOneBits(u_input.a.x & arg_1.x)), 1i) << (vec3<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), select(24432u, _wgslsmith_clamp_u32(~var_1.a.x, 0u, ~var_1.a.x), !arg_0.x || (false && arg_0.x)), ~_wgslsmith_mult_u32(abs(25633u), abs(var_1.a.x))) % vec3<u32>(32u));
    global0 = -221f;
    let var_3 = false;
    return ~(~abs(select(1u, select(var_1.a.x, 10029u, arg_0.x), true)));
}

fn func_5(arg_0: vec3<u32>, arg_1: u32) -> f32 {
    var var_0 = u_input.a.yz;
    var var_1 = Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(firstLeadingBit(abs(vec3<u32>(arg_0.x, 81877u, 81980u))), ~(vec3<u32>(arg_0.x, 0u, 4294967295u) ^ arg_0))));
    let var_2 = Struct_1(true, u_input.a, vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-717f)) * -2135f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + var_2.c.x));
    var_0 = firstLeadingBit(firstLeadingBit(u_input.a.zx));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), -1011f);
}

fn func_6(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))));
    return Struct_1(true, vec4<i32>(~max(_wgslsmith_dot_vec2_i32(vec2<i32>(-40771i, u_input.a.x), vec2<i32>(u_input.a.x, -1i)), -u_input.a.x), ~(~(i32(-1i) * -2147483647i)), firstLeadingBit(-1i), _wgslsmith_mult_i32(u_input.a.x << ((1u << (arg_0.x % 32u)) % 32u), u_input.a.x)), vec3<f32>(1301f, -1223f, _wgslsmith_div_f32(arg_1, 1f)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = func_6(~(~vec3<u32>(_wgslsmith_mod_u32(1u, 5388u), ~50208u, _wgslsmith_add_u32(25139u, 42133u))), _wgslsmith_f_op_f32(round(arg_0)), Struct_4(_wgslsmith_f_op_f32(func_5(~vec3<u32>(51405u, 1u, 62214u), func_4(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), -u_input.a.zz, func_2(Struct_1(false, vec4<i32>(-23905i, u_input.a.x, 1i, 38537i), vec3<f32>(arg_0, -142f, 1688f))))))));
    var_0 = Struct_1(true, u_input.a, _wgslsmith_f_op_vec3_f32(max(var_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1180f, var_0.c.x, 791f))))))));
    let var_1 = _wgslsmith_dot_vec4_i32(var_0.b, var_0.b);
    var_0 = Struct_1(!(var_0.a && !var_0.a), -abs(-_wgslsmith_sub_vec4_i32(var_0.b, u_input.a)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.c))));
    var var_2 = select(~vec3<u32>(_wgslsmith_add_u32(12838u, 1u), countOneBits(1u), _wgslsmith_div_u32(abs(1u), _wgslsmith_add_u32(1u, 1u))), ~abs(vec3<u32>(~1u, reverseBits(1u), 32360u)), select(select(select(!vec3<bool>(var_0.a, var_0.a, var_0.a), !vec3<bool>(var_0.a, false, var_0.a), select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.a, false), vec3<bool>(true, true, var_0.a))), !(!vec3<bool>(var_0.a, var_0.a, var_0.a)), !all(vec4<bool>(false, var_0.a, var_0.a, true))), select(vec3<bool>(var_0.a, !var_0.a, var_0.b.x == 21169i), select(vec3<bool>(var_0.a, false, true), select(vec3<bool>(false, false, var_0.a), vec3<bool>(true, var_0.a, var_0.a), false), -1500f < var_0.c.x), vec3<bool>(var_0.c.x < -156f, var_0.a, var_0.a)), var_0.a));
    return func_6(vec3<u32>(var_2.x, 1u, 1u), _wgslsmith_f_op_f32(-arg_0), Struct_4(_wgslsmith_f_op_f32(145f - _wgslsmith_f_op_f32(sign(-413f)))));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<f32>) -> Struct_4 {
    let var_0 = arg_0.a;
    var var_1 = 1i;
    let var_2 = 222f;
    global0 = _wgslsmith_div_f32(func_6(_wgslsmith_mult_vec3_u32(arg_1, vec3<u32>(~arg_1.x, 1u, 505u)), _wgslsmith_f_op_f32(min(-883f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-350f)))))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -826f)))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1318f))))));
    global0 = -1017f;
    return Struct_4(-1612f);
}

fn func_8(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    var var_0 = vec3<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 4848u, select(arg_0, 1u, false)), ~(~vec4<u32>(arg_0, arg_0, 4018u, 103756u))), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(arg_0, 4294967295u, arg_0), _wgslsmith_div_u32(~arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0, arg_0, 48057u), vec4<u32>(arg_0, arg_0, arg_0, arg_0))))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(~4294967295u, ~(arg_0 & 0u), arg_0), vec3<u32>(abs(18132u | arg_0), 1u, max(16761u, 60576u))) % vec3<u32>(32u));
    var var_1 = Struct_1(true, u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.a, arg_1.a, 1604f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(597f, 474f, 751f))))));
    var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, ~20797u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_0), vec3<u32>(1u, 0u, 52439u))), vec3<u32>(abs(arg_0), 16002u, 16645u), ~select(vec3<u32>(arg_0, var_0.x, 6320u), vec3<u32>(5156u, 0u, arg_0), vec3<bool>(var_1.a, var_1.a, var_1.a))), countOneBits(vec3<u32>(var_0.x, var_0.x, 6187u))), vec3<u32>(0u, select(~arg_0, ~29486u, arg_1.a == -888f), abs(1u)));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_1.b.x, _wgslsmith_clamp_i32(var_1.b.x, u_input.a.x, -4901i)), 6499i, -46950i, 35887i), vec4<i32>(_wgslsmith_add_i32(-var_1.b.x, func_2(Struct_1(true, u_input.a, vec3<f32>(var_1.c.x, -874f, arg_1.a))).x), ~(u_input.a.x << (4294967295u % 32u)), -42173i, ~var_1.b.x)) >= func_2(func_1(_wgslsmith_f_op_f32(f32(-1f) * -809f))).x;
    return func_6(~countOneBits(~abs(vec3<u32>(var_0.x, 0u, arg_0))), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(-var_1.c.x)), func_7(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, arg_1.a))), countOneBits(~vec3<u32>(arg_0, 4294967295u, 1u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), vec3<u32>(var_0.x, var_0.x, arg_0)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, 563f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(571f, arg_1.a))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.c.x, var_1.c.x)))))));
}

fn func_9(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 40174i, u_input.a.x) ^ u_input.a.yww, _wgslsmith_mod_vec3_i32(-func_8(arg_1, Struct_4(arg_2)).b.yzw, u_input.a.xwy) << ((~vec3<u32>(4294967295u, 4294967295u, 43486u) & (vec3<u32>(arg_1, 109291u, arg_1) ^ select(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(28620u, arg_1, 1u), false))) % vec3<u32>(32u)));
    global0 = arg_2;
    let var_1 = -2147483647i;
    var var_2 = Struct_4(arg_2);
    var var_3 = Struct_5(~4294967295u, var_0.x, true, ~min(13066u | (arg_1 << (arg_1 % 32u)), ~arg_1 >> (max(0u, 0u) % 32u)), Struct_3(Struct_2(_wgslsmith_div_vec3_u32(max(vec3<u32>(56514u, arg_1, 1u), vec3<u32>(29680u, 35956u, 5210u)), min(vec3<u32>(54298u, arg_1, arg_1), vec3<u32>(8255u, 4294967295u, 31267u))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(783f)), 1838f, _wgslsmith_f_op_f32(f32(-1f) * -1759f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 402f, -210f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-682f)) - _wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-378f, -1270f))), 141f)));
    var_0 = func_9(~u_input.a.x, ~0u, var_0.c.x, func_8(1u, func_7(func_1(-808f), ~(~vec3<u32>(4294967295u, 4294967295u, 25508u)), vec2<f32>(_wgslsmith_f_op_f32(sign(419f)), _wgslsmith_div_f32(var_0.c.x, 125f)))));
    let var_1 = Struct_5(_wgslsmith_div_u32(firstLeadingBit(~11627u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(57742u, 14008u))), _wgslsmith_mod_u32(min(_wgslsmith_mult_u32(1u, 4294967295u), 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 23082u), vec2<u32>(1u, 1u)))), -var_0.b.x, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f), _wgslsmith_f_op_f32(min(559f, var_0.c.x)))).a, max(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(23841u, 4294967295u, 4294967295u)), max(~vec3<u32>(106237u, 23905u, 4294967295u), vec3<u32>(27591u, 42401u, 0u))), 56306u), Struct_3(Struct_2(vec3<u32>(~4294967295u, min(51110u, 8748u), 1u))));
    let var_2 = Struct_3(var_1.e.a);
    let var_3 = Struct_2(max(vec3<u32>(4294967295u, ~_wgslsmith_div_u32(var_2.a.a.x, var_2.a.a.x), var_1.a), ~(~(~vec3<u32>(1u, var_2.a.a.x, 0u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x, any(vec3<bool>(var_1.c, true, true))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(-var_0.b, var_0.b));
}

