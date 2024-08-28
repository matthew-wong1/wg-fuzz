struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), false), false), !select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), select(vec2<bool>(true, any(vec2<bool>(true, true))), select(vec2<bool>(select(false, false, false), true), vec2<bool>(any(vec4<bool>(true, false, true, true)), true), all(vec3<bool>(false, true, false))), !vec2<bool>(true, u_input.a.x >= 67487u)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1125f + _wgslsmith_div_f32(-1041f, _wgslsmith_f_op_f32(f32(-1f) * -588f))))), 341f, _wgslsmith_f_op_f32(f32(-1f) * -445f));
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, max(1u, ~(~27020u)), ~(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x))), vec3<u32>(min(29083u, _wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.a.x), 1u)), u_input.a.x, firstTrailingBit(~4009u)));
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1007f), var_1.x, -741f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(740f, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, -969f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, var_1.x, -1000f))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.yz) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), var_1.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(var_1.yx, var_1.xx), _wgslsmith_f_op_vec2_f32(floor(var_1.yx)))))) + var_1.zz);
    return ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_2.zx, ~u_input.a), 1u & var_2.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, var_2.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 43116u, 4294967295u, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(22755u, u_input.a.x, var_2.x, 69478u))), _wgslsmith_sub_u32(69025u, 29046u) ^ ~u_input.a.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> f32 {
    let var_0 = arg_2.b;
    let var_1 = 718f;
    let var_2 = vec3<u32>(u_input.a.x, _wgslsmith_add_u32(arg_2.b.c.x, func_3()), firstLeadingBit(49132u));
    var var_3 = select(arg_3, !arg_3, !(!(!arg_3)));
    var_3 = select(vec2<bool>(true, arg_3.x), vec2<bool>(true, true), arg_3);
    return var_0.b.x;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = 0u;
    var_0 = _wgslsmith_sub_u32(u_input.a.x, arg_0.b.x);
    var var_1 = Struct_2(select(vec3<bool>(arg_2, all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2)), select(arg_2, false && arg_2, true)), !vec3<bool>(true, arg_2, arg_2), select(select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, arg_2, arg_2)), select(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(arg_2, true, false), vec3<bool>(true, false, arg_2)), vec3<bool>(true, arg_2, false), select(vec3<bool>(arg_2, true, false), vec3<bool>(arg_2, false, false), vec3<bool>(arg_2, arg_2, false))), !vec3<bool>(arg_2, arg_2, arg_2))), 21456u, -1135f, Struct_1(arg_3.b.a, _wgslsmith_div_vec2_f32(arg_3.b.b, vec2<f32>(-906f, _wgslsmith_div_f32(298f, -2298f))), arg_0.a.c), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), -1136f, arg_1.x, _wgslsmith_f_op_f32(trunc(arg_3.b.b.x)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(156f)))), 1532f), vec4<u32>(arg_0.b.x, arg_3.b.c.x, arg_3.b.c.x, 1u)));
    var var_2 = arg_3;
    var var_3 = u_input.b;
    return _wgslsmith_div_f32(arg_3.b.b.x, _wgslsmith_f_op_f32(trunc(var_1.e.a.x)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(vec4<f32>(-940f, 1172f, 394f, -1627f), vec2<f32>(176f, -548f), vec4<u32>(120608u, 7728u, 4294967295u, u_input.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, u_input.a.x))), vec4<f32>(_wgslsmith_f_op_f32(func_2(vec2<f32>(-1536f, 729f), 20639i, Struct_3(u_input.b.xy, Struct_1(vec4<f32>(1595f, 228f, -1693f, -377f), vec2<f32>(622f, 1000f), vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(1410f)), -210f, _wgslsmith_f_op_f32(max(-274f, -709f))), true, Struct_3(vec2<i32>(1i, u_input.b.x), Struct_1(vec4<f32>(-776f, 568f, 697f, 167f), vec2<f32>(273f, -231f), vec4<u32>(1u, 1u, u_input.a.x, 30626u))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1017f) - -574f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(317f)) + 223f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-793f + -778f) + _wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(vec4<f32>(-716f, 612f, 898f, 931f), vec2<f32>(-1000f, 1183f), vec4<u32>(55366u, 36392u, 1452u, 29884u)), vec3<u32>(u_input.a.x, u_input.a.x, 44769u)), vec4<f32>(167f, -1582f, 214f, -1172f), true, Struct_3(u_input.b.yz, Struct_1(vec4<f32>(353f, -1907f, -489f, -1000f), vec2<f32>(724f, 1720f), vec4<u32>(65829u, u_input.a.x, u_input.a.x, 102454u)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(365f + -623f)))))), _wgslsmith_f_op_f32(1363f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_5(Struct_1(vec4<f32>(-244f, 609f, -541f, -1045f), vec2<f32>(2114f, -1504f), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec4<f32>(1000f, -508f, 2603f, 347f), true, Struct_3(u_input.b.yx, Struct_1(vec4<f32>(489f, 952f, -1150f, -324f), vec2<f32>(-1309f, -289f), vec4<u32>(28675u, 97979u, u_input.a.x, 1u)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-809f, 363f, false)) - _wgslsmith_f_op_f32(sign(-928f)))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1107f, var_0.x, var_0.x))))) * var_0);
    var var_2 = select(u_input.b.x, reverseBits(~_wgslsmith_add_i32(-30978i, -48366i)), !(!all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-540f)) + var_1.x), var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1408f, var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -541f) * _wgslsmith_f_op_f32(-var_1.x)))));
    let var_4 = Struct_3(~((select(u_input.b.zx, vec2<i32>(-2147483647i, 0i), vec2<bool>(false, false)) >> (_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 7262u)) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-941f, -659f, var_1.x, 1187f)) - _wgslsmith_f_op_vec4_f32(sign(var_0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-2095f - -926f)) - _wgslsmith_f_op_vec2_f32(floor(var_1.zy))), min(firstTrailingBit(vec4<u32>(78289u, 1u, 71308u, 4294967295u)), ~(~vec4<u32>(108312u, 0u, u_input.a.x, 52756u)))));
    return Struct_2(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), vec3<bool>(all(vec4<bool>(true, true, false, true)), false, true), true), select(vec3<bool>(false, any(vec3<bool>(true, false, false)), true), vec3<bool>(937f >= var_0.x, true, select(true, false, false)), select(all(vec2<bool>(false, true)), false, false)), true), ~var_4.b.c.x, var_0.x, var_4.b, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(759f, -1000f, var_4.b.a.x, -1193f))), vec4<bool>(false, false, false, true))))), vec2<f32>(_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(abs(var_0.x)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4.b.b.x, 214f)) - -1390f)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 4294967295u, 4294967295u, 4893u), vec4<u32>(u_input.a.x, 69954u, 4294967295u, 30843u), vec4<bool>(false, true, true, true)) ^ var_4.b.c, ~(~vec4<u32>(u_input.a.x, 4294967295u, var_4.b.c.x, 108935u)), var_4.b.c)));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.x)), 1734f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1.d.b.x)), 711f), -1610f))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) + var_0.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), _wgslsmith_f_op_f32(abs(-411f)), _wgslsmith_f_op_f32(-186f * arg_0.x)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.e.b.x, -145f, arg_1.d.a.x, var_0.x), _wgslsmith_f_op_vec4_f32(select(arg_1.e.a, vec4<f32>(_wgslsmith_f_op_f32(-297f + arg_0.x), _wgslsmith_div_f32(273f, -1378f), _wgslsmith_f_op_f32(floor(arg_1.d.a.x)), 247f), _wgslsmith_f_op_f32(select(arg_0.x, -1184f, false)) == -587f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_1.e.a)) * arg_1.e.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().c) - _wgslsmith_f_op_f32(f32(-1f) * -991f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, arg_1.d.b.x)), -1000f, var_0.x)));
    var var_1 = func_1().d;
    var var_2 = vec3<bool>(false, false, false);
    return Struct_4(select(vec4<i32>(-u_input.b.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, -41269i), u_input.b), 1i, countOneBits(select(u_input.b.x, 2147483647i, arg_1.a.x))), select(-vec4<i32>(-2147483647i, 2147483647i, u_input.b.x, 1i), ~(~vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 39991i)), select(select(vec4<bool>(true, arg_1.a.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, false, arg_1.a.x, arg_1.a.x)), !vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, var_2.x), 152f > arg_1.e.a.x)), _wgslsmith_sub_u32(~u_input.a.x, arg_1.e.c.x) != func_3()), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_1().c - _wgslsmith_f_op_f32(f32(-1f) * -527f)), _wgslsmith_f_op_f32(-var_1.a.x), -1864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.e.a.x)))), var_1.a.zy, vec4<u32>(~reverseBits(arg_1.d.c.x), arg_1.b, 88746u, _wgslsmith_mult_u32(1u, ~var_1.c.x))), all(vec4<bool>(any(var_2.zx), true, true, false && arg_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec2<f32>(-1000f, 1000f), func_1());
    var_0 = func_5(var_0.b.b, func_1());
    let var_1 = Struct_4(vec4<i32>(-1i, 0i, -22693i, var_0.a.x), func_1().d, (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(92682u, u_input.a.x, 0u), func_1().d.c.x, u_input.a.x) ^ ~4294967295u) >= var_0.b.c.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(102f, -336f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -737f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-697f, vec4<u32>(firstTrailingBit(0u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, var_0.b.c.x), select(vec4<u32>(var_0.b.c.x, 0u, 1u, 1u), vec4<u32>(34404u, var_0.b.c.x, 4294967295u, var_0.b.c.x), vec4<bool>(var_1.c, var_0.c, var_1.c, var_0.c))), ~abs(var_0.b.c)), _wgslsmith_dot_vec3_u32(vec3<u32>(~46805u, ~var_0.b.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, var_0.b.c.x), var_1.b.c.yxw)), vec3<u32>(_wgslsmith_add_u32(var_0.b.c.x, 4294967295u), ~var_0.b.c.x, 29952u)), var_1.b.c.x), vec3<i32>(-6473i, _wgslsmith_dot_vec4_i32(vec4<i32>(-25572i >> (u_input.a.x % 32u), ~u_input.b.x, -2147483647i, 36689i), firstTrailingBit(var_0.a)), ~(-2147483647i) >> (~(var_1.b.c.x | 58731u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - var_1.b.b.x)), reverseBits(vec3<i32>(-u_input.b.x, _wgslsmith_sub_i32(-21611i, u_input.b.x), u_input.b.x | 1i)));
}

