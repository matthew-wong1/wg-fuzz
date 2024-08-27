struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_3,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1241f, arg_2.d.c.d, 564f, arg_2.c.d)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, arg_2.c.d, -2220f, 1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(191f, -430f, arg_2.d.c.a.x, arg_2.c.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c.d, arg_2.c.d, arg_2.c.a.x, 1757f), vec4<f32>(arg_2.c.b.x, -1031f, arg_2.d.c.a.x, 1425f)), !vec4<bool>(arg_2.d.a.x, true, true, arg_2.d.a.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.d * -365f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.c.b.x)), -1125f))), arg_2.d.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(541f, arg_2.c.b.x))))));
    var var_1 = false;
    var var_2 = arg_0;
    let var_3 = true;
    let var_4 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, u_input.c.x)), ~(~_wgslsmith_add_vec2_u32(select(arg_2.b.c.yx, vec2<u32>(arg_2.a.x, 4294967295u), arg_2.d.a), arg_2.b.c.yy)));
    return arg_2.c.d;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    let var_0 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, arg_3.a.x, arg_3.a.x), vec3<bool>(false, arg_3.a.x, arg_3.a.x), arg_3.a.x), select(vec3<bool>(arg_3.a.x, false, true), vec3<bool>(arg_3.a.x, false, arg_3.a.x), vec3<bool>(arg_3.a.x, arg_3.a.x, arg_3.a.x))), vec3<bool>(474i < arg_3.c.c, -10595i > arg_3.b, true), _wgslsmith_sub_i32(arg_1.x, u_input.e) < arg_3.b), vec3<bool>(true, false, (arg_3.c.c >= u_input.e) & all(arg_3.a)), any(!vec4<bool>(true, false, arg_3.a.x, arg_3.a.x)));
    var var_1 = arg_3.c;
    var_1 = arg_3.c;
    var_1 = arg_3.c;
    global0 = array<vec4<u32>, 11>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(656f, -834f)) + _wgslsmith_f_op_f32(func_3(Struct_1(0u, 59576u, u_input.c), u_input.b, Struct_4(u_input.c.yz, arg_2, arg_3.c, arg_3, u_input.a)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1435f)))), true | var_0.x))));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_1 {
    global0 = array<vec4<u32>, 11>();
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a.x, arg_1, _wgslsmith_sub_i32(~u_input.a.x, _wgslsmith_clamp_i32(u_input.e, 12960i, arg_1)) & _wgslsmith_dot_vec3_i32(-u_input.a.zzx, select(vec3<i32>(69098i, 0i, u_input.e), vec3<i32>(arg_1, -10881i, u_input.e), true))), abs(abs(vec4<i32>(firstLeadingBit(-38643i), arg_1, _wgslsmith_mod_i32(2147483647i, -1i), u_input.a.x))));
    var var_1 = _wgslsmith_dot_vec3_i32(countOneBits(u_input.a.xwy), vec3<i32>(2147483647i, _wgslsmith_mult_i32(min(-1i | var_0, arg_1), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-28729i, 15621i), 3868i)), 0i));
    return Struct_1(u_input.b, _wgslsmith_mult_u32(u_input.b, ~20550u) ^ u_input.d, ~vec3<u32>(0u, countOneBits(0u), ~(4294967295u >> (u_input.b % 32u))));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = all(vec2<bool>(true, any(vec2<bool>(true, u_input.d < u_input.b))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1279f, _wgslsmith_f_op_f32(-604f - 140f), arg_2.c.a.x, _wgslsmith_f_op_f32(step(1000f, arg_2.c.a.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1515f, -417f, 1000f, arg_0.c.b.x) + vec4<f32>(-1000f, arg_0.d.c.a.x, arg_2.c.b.x, -102f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2587f, arg_0.d.c.d, arg_0.c.a.x, 927f))), vec4<bool>(var_0, false, arg_2.a.x, arg_0.d.a.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d, 470f, arg_0.c.b.x, arg_0.c.b.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.c.d, 146f, arg_2.c.a.x, -811f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1124f, 329f, arg_2.c.a.x, -1159f), vec4<f32>(arg_2.c.b.x, arg_0.d.c.a.x, 2009f, 1529f))) * vec4<f32>(-1305f, 1260f, 1507f, arg_0.c.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1937f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1201f))), arg_0.c.b.x, _wgslsmith_f_op_f32(max(-522f, _wgslsmith_f_op_f32(arg_0.d.c.a.x - -1645f))))), select(!vec4<bool>(arg_2.a.x != false, var_0, var_0, !arg_2.a.x), !vec4<bool>(var_0, arg_0.d.a.x, true, select(true, true, arg_0.d.a.x)), all(select(!vec3<bool>(var_0, true, arg_2.a.x), vec3<bool>(true, arg_2.a.x, arg_2.a.x), select(vec3<bool>(true, false, true), vec3<bool>(var_0, arg_0.d.a.x, arg_2.a.x), vec3<bool>(arg_0.d.a.x, true, arg_2.a.x)))))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(848f + -588f)), _wgslsmith_f_op_f32(1356f - _wgslsmith_f_op_f32(arg_2.c.a.x + 1981f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.c.d + 319f)), -1365f);
    return !arg_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = !func_5(Struct_4(countOneBits(u_input.c.xz) | u_input.c.zy, func_4(_wgslsmith_f_op_f32(func_2(1327f, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -5205i), Struct_1(u_input.b, 13653u, u_input.c), Struct_3(vec2<bool>(false, false), -1799i, Struct_2(vec2<f32>(1858f, 586f), vec3<f32>(-1014f, 1566f, 1000f), 0i, 507f)))), countOneBits(-13995i)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-917f, -2433f)), vec3<f32>(600f, 1074f, 341f), u_input.e, _wgslsmith_f_op_f32(func_3(Struct_1(0u, 32200u, vec3<u32>(u_input.b, u_input.b, 1u)), u_input.c.x, Struct_4(u_input.c.yy, Struct_1(u_input.c.x, u_input.d, vec3<u32>(u_input.b, 50186u, 4294967295u)), Struct_2(vec2<f32>(-879f, -421f), vec3<f32>(-168f, 937f, -1182f), -1i, 710f), Struct_3(vec2<bool>(true, true), u_input.a.x, Struct_2(vec2<f32>(681f, -1459f), vec3<f32>(853f, -1198f, -1000f), 39512i, -1669f)), vec4<i32>(3345i, 60143i, u_input.a.x, u_input.e))))), Struct_3(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), 1i, Struct_2(vec2<f32>(-981f, 1489f), vec3<f32>(-206f, 108f, 437f), 2147483647i, 885f)), vec4<i32>(-29887i, 1i, countOneBits(u_input.e), 1i)), Struct_1(0u << (1u % 32u), u_input.c.x, u_input.c), Struct_3(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), firstTrailingBit(2147483647i), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1014f, 1489f), vec2<f32>(1084f, -1631f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-796f, 1000f, 285f)), u_input.e >> (33769u % 32u), -311f)));
    global0 = array<vec4<u32>, 11>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-238f * 116f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1568f * 880f)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(534f, 716f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(199f, -443f))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    return Struct_1(_wgslsmith_div_u32(u_input.b, abs(1u)), ~_wgslsmith_mod_u32(1u, ~firstLeadingBit(4294967295u)), abs(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 18002u, u_input.c.x), u_input.c), _wgslsmith_div_vec3_u32(~u_input.c, u_input.c))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) - vec2<f32>(-666f, arg_1.x))), arg_1, !select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    let var_1 = ~u_input.a.x;
    let var_2 = Struct_4(_wgslsmith_mult_vec2_u32(func_1().c.yx, firstLeadingBit(~(~vec2<u32>(0u, 1u)))), arg_0, Struct_2(vec2<f32>(-168f, _wgslsmith_f_op_f32(abs(708f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -687f, -1133f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, -278f, var_0.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.x, 1616f, arg_1.x), vec3<f32>(var_0.x, 450f, 579f)))))), -2147483647i, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-159f, 873f)), _wgslsmith_f_op_f32(trunc(2191f)))), u_input.a, arg_0, Struct_3(vec2<bool>(false, true), -1i, Struct_2(var_0, vec3<f32>(-1744f, 763f, arg_1.x), 2147483647i, var_0.x))))), Struct_3(vec2<bool>(any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)), false), -16166i, Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(387f, arg_1.x, var_0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1965f, arg_1.x, arg_1.x), vec3<f32>(402f, -1000f, -462f))))), -1450i, _wgslsmith_f_op_f32(f32(-1f) * -2123f))), vec4<i32>(_wgslsmith_add_i32(-(~u_input.e), var_1), select(var_1, 24108i, !(u_input.a.x > 2147483647i)), reverseBits(-23881i), -var_1 ^ _wgslsmith_mod_i32(u_input.e, -35398i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2.c.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 612f, var_2.d.c.a.x)))))), !(var_2.d.a.x & var_2.d.a.x) != var_2.d.a.x)));
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(var_3));
    return ~(_wgslsmith_sub_u32(arg_0.a, 0u) & max(~var_2.b.b, _wgslsmith_mult_u32(~var_2.a.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.e, -11370i, u_input.a.x), -vec4<i32>(-1i, -18439i, u_input.e, 2147483647i)), u_input.a | vec4<i32>(-1i, 0i, u_input.a.x, u_input.e)));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(1i), _wgslsmith_div_i32(u_input.a.x, var_0.x) | select(-u_input.e, u_input.e, true)), -abs(-_wgslsmith_mod_i32(-7816i, var_0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, -494f, -473f, 788f))))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-922f, 677f, -2239f, 673f) - vec4<f32>(-2281f, 2298f, 572f, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-958f, 1000f, -2275f, 1736f) - vec4<f32>(756f, 1354f, 730f, -365f)))), vec4<f32>(_wgslsmith_f_op_f32(max(-1016f, -2248f)), _wgslsmith_f_op_f32(-213f - 1235f), 1291f, _wgslsmith_f_op_f32(round(1035f))))))));
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    var var_3 = var_2.x;
    let var_4 = !(!(!(-898f < var_2.x))) & any(vec2<bool>(14128i > -var_0.x, any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var var_5 = Struct_5(vec2<u32>(~1u, func_6(func_1(), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_2.x, 576f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -692f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-980f, var_2.x, 663f, var_2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -988f, 1000f, -133f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_2.x, var_2.x, var_2.x), vec4<f32>(1631f, var_2.x, var_2.x, var_2.x)))), min(max(abs(vec2<u32>(1u, 1u)), var_5.a), var_5.a), 18138i, 1356f);
}

