struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec3<u32> {
    let var_0 = Struct_1(u_input.e, _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(28896u, 0u, 3511u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 64438u, arg_0, 1203u), vec4<u32>(4294967295u, u_input.a.x, arg_0, 4294967295u), u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(8676u, u_input.a.x, arg_0, 0u), u_input.a))), vec4<u32>(u_input.a.x, _wgslsmith_add_u32(20436u, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(87780u, 10474u, 1u), u_input.a.yyz)) << (u_input.a % vec4<u32>(32u))), ~u_input.a.xww);
    var var_1 = Struct_3(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), !any(vec4<bool>(true, true, true, false))), ~(~(~1u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + 1140f)));
    var_1 = Struct_3(vec2<bool>(false, var_1.a.x | !var_1.a.x), var_0.c.x >> (7971u % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, 591f) * vec2<f32>(1570f, var_2)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1382f, var_2) - vec2<f32>(var_2, var_2)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-616f, var_2) * vec2<f32>(var_2, -300f))))));
    return u_input.a.xzx;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<u32>) -> vec3<f32> {
    let var_0 = ~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x);
    let var_1 = Struct_4(214f, vec2<u32>(u_input.a.x & u_input.a.x, 5056u), vec2<bool>(any(select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), all(vec3<bool>(true, all(vec2<bool>(true, false)), true))), -2698i);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(trunc(arg_0.x)))))), ~(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 7656u), vec2<u32>(0u, arg_1.x)) >> (u_input.a.yz % vec2<u32>(32u))), !select(select(var_1.c, var_1.c, vec2<bool>(var_1.c.x, true)), var_1.c, true), _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(min(var_1.d, u_input.e)), -_wgslsmith_add_i32(var_1.d, -2147483647i)), ~var_1.d));
    let var_3 = _wgslsmith_f_op_vec3_f32(-arg_0);
    let var_4 = select(-(~vec4<i32>(-4391i, -66519i, var_2.d, _wgslsmith_add_i32(-2147483647i, 36471i))), (~vec4<i32>(var_1.d, var_2.d, -12999i, var_2.d) ^ (select(vec4<i32>(-20910i, u_input.d, var_1.d, u_input.c.x), vec4<i32>(-2147483647i, 15358i, 1i, -1i), var_2.c.x) >> (_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(var_1.b.x, 16025u, var_2.b.x, 1u)) % vec4<u32>(32u)))) ^ ~min(~vec4<i32>(u_input.c.x, var_2.d, 0i, var_2.d), ~vec4<i32>(var_2.d, 0i, u_input.b.x, 43068i)), var_2.c.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(722f - 1000f) - var_2.a) * _wgslsmith_f_op_f32(floor(var_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -2052f), -894f));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, 716f, -185f)), func_3(u_input.a.x & 0u)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, -982f, var_0.x) - arg_0), ~countOneBits(vec3<u32>(72754u, 8923u, 29875u)))).x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<f32>(arg_1.x, arg_2.a, arg_0.x), arg_3.b.xyy)).x, arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a, -1152f, arg_2.c.x))))));
    let var_1 = vec4<bool>(all(select(vec2<bool>(arg_2.b.x < 4294967295u, 0i <= arg_3.a), select(arg_2.c, !vec2<bool>(arg_2.c.x, arg_2.c.x), arg_2.c.x), false)), arg_2.c.x, u_input.c.x != ~(~firstLeadingBit(22741i)), !(!(any(vec3<bool>(arg_2.c.x, false, arg_2.c.x)) && true)));
    var_0 = arg_0;
    let var_2 = arg_3;
    return var_2;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_4(1460f, vec2<u32>(~(arg_0.b.x & 9376u) & 4294967295u, 13591u), vec2<bool>(!(false || all(vec3<bool>(false, false, true))), true), u_input.b.x);
    var var_1 = true;
    var var_2 = var_0;
    var_1 = ~(721i ^ u_input.e) > 52480i;
    var_1 = any(vec2<bool>(any(select(!vec3<bool>(var_2.c.x, true, false), select(vec3<bool>(false, false, true), vec3<bool>(var_0.c.x, var_2.c.x, var_0.c.x), true), !vec3<bool>(var_0.c.x, true, true))), true));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-countOneBits(countOneBits(vec4<i32>(u_input.e, 63857i, 28939i, -27013i))), select(vec4<i32>(1i, var_0.d, 0i, var_0.d), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.d, 2147483647i, var_0.d, u_input.b.x), -vec4<i32>(24062i, var_2.d, -118i, -15487i)), vec4<bool>(var_2.c.x, false, var_0.c.x, var_0.c.x || var_0.c.x))), -select(_wgslsmith_sub_vec4_i32(vec4<i32>(-19904i, -46427i, -31670i, -1i), vec4<i32>(arg_0.a, 4990i, -1i, 1i)), vec4<i32>(u_input.e, 25204i, -1i, var_0.d) << (vec4<u32>(arg_0.b.x, 1u, u_input.a.x, 26032u) % vec4<u32>(32u)), false) >> (~(u_input.a << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, arg_0.c.x, var_2.b.x, 0u), arg_0.b) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_6(arg_0: i32) -> Struct_2 {
    var var_0 = -24673i;
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2446f, -1000f, -574f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-914f, -811f, 184f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1575f, -319f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -100f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1872f, 216f))))), Struct_4(1754f, _wgslsmith_clamp_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.wz)), ~(~vec2<u32>(u_input.a.x, 35940u)), func_3(u_input.a.x).yy), vec2<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)))), -(arg_0 ^ -u_input.c.x)), Struct_1(u_input.e, firstLeadingBit(func_2(vec3<f32>(777f, 2030f, 2380f), _wgslsmith_div_vec2_f32(vec2<f32>(-239f, 834f), vec2<f32>(1215f, 2543f)), Struct_4(-1000f, u_input.a.yw, vec2<bool>(true, false), u_input.b.x), Struct_1(arg_0, u_input.a, vec3<u32>(4294967295u, u_input.a.x, 0u))).b), u_input.a.wxz));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-409f, 1277f) + -457f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(320f, 202f) * _wgslsmith_f_op_f32(1000f * -953f)) - -1520f)), firstLeadingBit(var_1.b.zw), select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(false, false)), true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x <= 1u), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), 2566i);
    var_0 = -3563i;
    var var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yxw, _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.b.x, 0u, 84931u), select(vec3<u32>(var_1.b.x, 4033u, var_1.c.x), var_1.c, var_2.c.x))), ~abs(min(u_input.a.yxz, var_1.c))), countOneBits(firstTrailingBit(~u_input.a.wxy)));
    return Struct_2(!select(select(select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(true, var_2.c.x, var_2.c.x, var_2.c.x), var_2.c.x), select(vec4<bool>(var_2.c.x, false, var_2.c.x, true), vec4<bool>(true, true, false, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x)), any(vec4<bool>(var_2.c.x, var_2.c.x, true, var_2.c.x))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, var_2.c.x, false, false), select(vec4<bool>(false, true, false, var_2.c.x), vec4<bool>(var_2.c.x, true, false, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.c.x))), true == !var_2.c.x), u_input.e, var_1);
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_1(abs(-arg_0.c.a), vec4<u32>(~97382u, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, arg_0.c.c.x), u_input.a.x), arg_2.b.x, u_input.a.x >> (u_input.a.x % 32u)), vec3<u32>(arg_0.c.b.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, arg_0.c.c.x), u_input.a.xx), ~(~1u)), arg_2.b.x));
    var var_1 = !arg_2.c.x || !arg_2.c.x;
    let var_2 = Struct_2(!vec4<bool>(true, false, arg_0.a.x, all(arg_0.a.zzx)), min(3084i, ~max(2147483647i, 46685i)), Struct_1(-33023i, vec4<u32>(_wgslsmith_div_u32(0u, firstLeadingBit(var_0.b.x)), u_input.a.x, arg_0.c.b.x, 54286u), countOneBits(u_input.a.zzz)));
    var_1 = !(arg_1 == func_6(arg_2.d).b);
    var_1 = select(-21168i >= _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c.x, 61572i) >> (arg_2.b.x % 32u), 1i), any(vec2<bool>(any(select(vec3<bool>(arg_0.a.x, true, arg_0.a.x), vec3<bool>(arg_0.a.x, true, true), vec3<bool>(arg_0.a.x, var_2.a.x, false))), true)), select(arg_2.c.x, any(arg_0.a), (_wgslsmith_sub_i32(52767i, var_2.c.a) == var_2.b) & !(arg_2.a < arg_2.a)));
    return Struct_2(arg_0.a, select(~arg_0.b, 1i, any(vec3<bool>(true, !arg_0.a.x, any(vec3<bool>(arg_2.c.x, var_2.a.x, false))))), var_0);
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = func_7(func_6(~(i32(-1i) * -1i) ^ func_5(func_2(vec3<f32>(489f, 1092f, -1759f), vec2<f32>(-754f, -817f), Struct_4(-1000f, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(false, true), -48205i), Struct_1(-1i, u_input.a, u_input.a.wzw)))), abs(func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-889f, -1069f, 229f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(405f, -1024f, -978f), vec3<f32>(142f, -652f, -695f), vec3<bool>(true, true, false))), all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(838f, 489f))))), Struct_4(_wgslsmith_f_op_f32(ceil(695f)), func_3(u_input.a.x).yy, func_6(-49612i).a.xw, -arg_0), Struct_1(-27968i, u_input.a ^ u_input.a, u_input.a.yzx)).a), Struct_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1089f + -645f), _wgslsmith_f_op_f32(-851f - 1633f))))), _wgslsmith_sub_vec2_u32(u_input.a.yz, u_input.a.xz), select(func_6(~u_input.c.x).a.zy, select(vec2<bool>(true, true), vec2<bool>(false, true), true), !any(vec2<bool>(false, false))), ~firstTrailingBit(u_input.d) & 0i));
    let var_1 = (0i != _wgslsmith_add_i32(func_6(_wgslsmith_mod_i32(u_input.d, u_input.b.x)).c.a, ~arg_0)) && !func_6(-arg_0).a.x;
    let var_2 = func_7(var_0, _wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.e, -1i), var_0.c.a), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f + _wgslsmith_f_op_f32(530f * -148f))), var_0.c.c.zz, var_0.a.zy, 0i)).c;
    var var_3 = vec4<i32>(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-882f, -254f), _wgslsmith_f_op_f32(1265f + -1348f), _wgslsmith_f_op_f32(-421f + 1062f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(490f, -1000f), vec2<f32>(1027f, -3220f), vec2<bool>(true, var_1))))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1555f, -909f, false)) - _wgslsmith_f_op_f32(703f * -990f)), vec2<u32>(_wgslsmith_clamp_u32(u_input.a.x, var_2.b.x, 0u), u_input.a.x | 1u), vec2<bool>(true, !var_1), 1i), func_6(var_2.a).c).a, ~(~0i), min(select(_wgslsmith_mod_i32(0i, u_input.d), var_0.b, var_1 & true), 920i) ^ ~firstTrailingBit(u_input.e), countOneBits(var_2.a));
    var var_4 = Struct_3(vec2<bool>(true, true), ~_wgslsmith_div_u32(var_0.c.b.x, 59460u ^ max(u_input.a.x, var_0.c.c.x)));
    return StorageBuffer(1u & u_input.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1331f, 358f, -683f, 214f), vec4<f32>(-529f, 148f, 1014f, 948f)))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -2147483647i, -1i, -16741i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -98656i, var_3.x, 1927i), vec4<i32>(1i, var_3.x, u_input.d, 2147483647i), vec4<i32>(34049i, 76397i, -2147483647i, var_3.x)), vec4<i32>(-2147483647i, -13373i, 2147483647i, arg_0) >> (countOneBits(var_2.b) % vec4<u32>(32u)), vec4<i32>(u_input.d, u_input.d, abs(var_2.a), ~(-35432i))), ~(~vec4<i32>(0i, var_0.b, u_input.d, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-365f)) * 1357f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(-409f))), _wgslsmith_f_op_f32(f32(-1f) * -454f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(u_input.c.x & ~firstTrailingBit(0i));
}

