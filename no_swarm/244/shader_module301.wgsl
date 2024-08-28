struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(2095u, 1u, 4667u), vec3<u32>(93325u, 8427u, 1u), vec3<u32>(4294967295u, 63688u, 0u), vec3<u32>(1u, 4894u, 5130u), vec3<u32>(2852u, 2292u, 0u), vec3<u32>(0u, 35659u, 0u), vec3<u32>(0u, 36059u, 6144u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 20420u, 27063u), vec3<u32>(1u, 49542u, 0u), vec3<u32>(63464u, 40884u, 0u), vec3<u32>(17230u, 1u, 60613u), vec3<u32>(11278u, 11814u, 36020u), vec3<u32>(1u, 44610u, 1u), vec3<u32>(66u, 52703u, 52920u), vec3<u32>(1u, 36913u, 40241u), vec3<u32>(4294967295u, 54960u, 38962u), vec3<u32>(119741u, 56243u, 44298u), vec3<u32>(11084u, 61675u, 5127u), vec3<u32>(33102u, 1u, 0u), vec3<u32>(10284u, 85351u, 3197u), vec3<u32>(8860u, 0u, 0u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(4294967295u, 82484u, 0u), vec3<u32>(18303u, 20504u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(21216u, 1u, 4294967295u), vec3<u32>(4294967295u, 74344u, 0u), vec3<u32>(68908u, 16988u, 41117u), vec3<u32>(75932u, 4294967295u, 20390u), vec3<u32>(4294967295u, 1u, 69687u));

var<private> global1: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: bool) -> vec3<i32> {
    global0 = array<vec3<u32>, 31>();
    global1 = 1000f;
    var var_0 = Struct_5(arg_2.a.a, Struct_3((all(vec2<bool>(arg_2.a.d.c.x, arg_3)) || any(vec3<bool>(true, true, arg_3))) | arg_3, Struct_2(Struct_1(-vec3<i32>(-44509i, arg_2.a.a.a.x, -24942i), _wgslsmith_mod_vec2_u32(arg_2.a.d.b, vec2<u32>(9312u, 33751u)), select(arg_2.a.d.c, vec4<bool>(arg_2.e.c.x, arg_2.e.c.x, true, true), arg_2.a.a.c.x), vec3<u32>(arg_0.x, 0u, arg_2.a.a.d.x)), 23008i, firstLeadingBit(-2147483647i), Struct_1(u_input.d, arg_2.a.d.d.yx, arg_2.e.c, global0[_wgslsmith_index_u32(1u ^ arg_0.x, 31u)])), vec4<bool>(false && arg_2.e.c.x, false, any(vec2<bool>(arg_1.x, arg_2.e.c.x)), true), Struct_2(arg_2.e, _wgslsmith_mult_i32(u_input.c, 1i) | u_input.d.x, firstLeadingBit(_wgslsmith_sub_i32(-14530i, u_input.a.x)), Struct_1(vec3<i32>(u_input.d.x, u_input.a.x, -1i), ~arg_2.e.d.zz, arg_2.a.d.c, vec3<u32>(0u, 0u, arg_2.a.a.d.x) ^ vec3<u32>(u_input.e, 0u, 4294967295u))), select(!(!vec4<bool>(arg_3, false, true, true)), vec4<bool>(false != arg_1.x, arg_3, true, true), all(select(arg_2.a.d.c.zxw, arg_2.a.d.c.zyy, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.d)), arg_2.a.d.b | vec2<u32>(arg_0.x, arg_2.a.a.b.x));
    let var_1 = Struct_3(any(var_0.a.c), Struct_2(var_0.a, ~_wgslsmith_add_i32(arg_2.a.b, var_0.b.d.a.a.x) << (17253u % 32u), ~u_input.d.x, arg_2.e), !arg_2.e.c, arg_2.a, vec4<bool>(true, !var_0.a.c.x, -var_0.b.b.c <= max(_wgslsmith_add_i32(-9535i, -1i), _wgslsmith_mult_i32(arg_2.e.a.x, 2147483647i)), false));
    let var_2 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1123f, var_0.c.x);
    return ~(~u_input.d);
}

fn func_2() -> Struct_3 {
    let var_0 = vec3<bool>(true, !(u_input.b.x != -1i), true);
    global0 = array<vec3<u32>, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(482f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1106f) - _wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -784f)))));
    global0 = array<vec3<u32>, 31>();
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1271f, -956f)))))));
    return Struct_3(u_input.e >= _wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.e, u_input.e, 14824u, 1u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(26329u, 0u, u_input.e, 1u), vec4<u32>(0u, 4294967295u, 1u, 1u))), Struct_2(Struct_1(-func_3(vec2<u32>(u_input.e, u_input.e), vec2<bool>(var_0.x, true), Struct_4(Struct_2(Struct_1(u_input.d, vec2<u32>(4294967295u, 4294967295u), vec4<bool>(var_0.x, false, var_0.x, var_0.x), global0[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.c, u_input.d.x, Struct_1(u_input.d, vec2<u32>(93004u, u_input.e), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<u32>(u_input.e, u_input.e, 34976u))), u_input.d, vec3<f32>(-2069f, var_1.x, var_1.x), vec2<f32>(var_1.x, var_1.x), Struct_1(vec3<i32>(u_input.a.x, u_input.d.x, -45389i), vec2<u32>(u_input.e, 1u), vec4<bool>(var_0.x, var_0.x, true, false), global0[_wgslsmith_index_u32(u_input.e, 31u)])), false), abs(vec2<u32>(29130u, u_input.e)), vec4<bool>(42464u <= u_input.e, any(vec4<bool>(true, true, var_0.x, var_0.x)), true, true), ~global0[_wgslsmith_index_u32(125504u, 31u)]), select(u_input.a.x, u_input.d.x, false), abs(-2147483647i), Struct_1(vec3<i32>(~49764i, _wgslsmith_div_i32(u_input.a.x, u_input.b.x), _wgslsmith_mod_i32(-2403i, u_input.c)), ~vec2<u32>(6225u, u_input.e) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e, 0u), vec2<u32>(u_input.e, 3077u)) % vec2<u32>(32u)), select(vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, true)), 1585f <= var_1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.e, 86834u), global0[_wgslsmith_index_u32(1u, 31u)] ^ global0[_wgslsmith_index_u32(u_input.e, 31u)]))), !(!select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, var_0.x, false, true), true), select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(false, false, true, false), var_0.x), false)), Struct_2(Struct_1(-(u_input.d | u_input.d), ~vec2<u32>(39059u, u_input.e), !(!vec4<bool>(true, true, var_0.x, true)), global0[_wgslsmith_index_u32(1u, 31u)]), ~_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, u_input.a), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.d.x, u_input.c))), abs(u_input.a.x << (_wgslsmith_clamp_u32(0u, u_input.e, 4294967295u) % 32u)), Struct_1(reverseBits(u_input.d), vec2<u32>(~u_input.e, u_input.e), select(!vec4<bool>(false, var_0.x, var_0.x, true), select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !var_0.x), ~global0[_wgslsmith_index_u32(4007u, 31u)] ^ global0[_wgslsmith_index_u32(u_input.e, 31u)])), !vec4<bool>(var_0.x, var_0.x, select(true, any(var_0.zy), true), 0u >= ~u_input.e));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-935f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -319f), _wgslsmith_f_op_f32(max(507f, -660f)), true)), -279f)));
    let var_1 = -u_input.b;
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(max(-vec3<i32>(arg_0.d.d.a.x, -1i, 1i), arg_2.d.a), ~vec3<i32>(u_input.a.x, 0i, u_input.d.x)), arg_0.d.c ^ -2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(min(u_input.c, 1i), 1i, func_3(arg_0.d.d.b, arg_0.e.xw, Struct_4(Struct_2(arg_0.b.d, 27438i, u_input.c, arg_2.d), vec3<i32>(var_1.x, u_input.a.x, -1i), var_0.xzy, vec2<f32>(628f, var_0.x), arg_2.a), false).x), -abs(vec3<i32>(arg_0.b.b, 1i, u_input.d.x))));
    let var_3 = false;
    var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.c, 1i, -6698i, _wgslsmith_add_i32(-3361i, -20838i)) & _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(var_1.x, 14695i, arg_2.b, 0i)), ~vec4<i32>(37037i, 77265i, 1i, u_input.c)), vec4<i32>(u_input.b.x, ~arg_0.b.d.a.x, _wgslsmith_div_i32(abs(arg_0.b.b), u_input.a.x), 2147483647i)) >> (1u % 32u);
    return Struct_5(func_2().d.d, arg_0, vec2<f32>(var_0.x, -703f), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(abs(arg_2.a.b), func_2().b.d.d.xx), abs(vec2<u32>(arg_0.b.a.b.x, 0u))));
}

fn func_1() -> Struct_4 {
    var var_0 = vec2<u32>(~61847u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(u_input.e, 55874u)), ~29584u, 124820u, _wgslsmith_sub_u32(23058u, 0u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 1u, 4294967295u, u_input.e), vec4<u32>(u_input.e, 84685u, 10437u, 21159u)), max(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, u_input.e, u_input.e, 1u)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2393f), 1534f, -638f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, 1250f, -1694f))))));
    var var_2 = func_4(func_2(), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(func_2().d.a, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, 38852i), _wgslsmith_clamp_i32(u_input.c, u_input.c, -45481i)), u_input.d.yy), ~(~_wgslsmith_add_i32(u_input.a.x, -1i)), Struct_1(_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(-47463i, u_input.d.x, 730i)), vec3<i32>(7782i, u_input.c, u_input.a.x)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(var_0.x, 0u), vec2<u32>(0u, u_input.e)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 12888u), vec2<u32>(35578u, var_0.x))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), ~(global0[_wgslsmith_index_u32(1u, 31u)] | vec3<u32>(4294967295u, var_0.x, 1u)))), !(-1000f <= _wgslsmith_f_op_f32(var_1.x - var_1.x)) && !func_2().a);
    global1 = _wgslsmith_f_op_f32(-var_1.x);
    var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(min(vec2<u32>(var_2.a.b.x, var_0.x), var_2.b.d.a.d.xz) ^ _wgslsmith_mult_vec2_u32(var_2.b.b.d.d.yy, var_2.d), _wgslsmith_sub_vec2_u32(var_2.b.d.d.b & var_2.b.d.d.d.zx, ~vec2<u32>(var_0.x, 4904u))), func_4(Struct_3(true, var_2.b.b, !var_2.a.c, var_2.b.d, vec4<bool>(var_2.b.c.x, false, false, var_2.a.c.x)), select(vec3<bool>(var_2.b.e.x, var_2.a.c.x, var_2.a.c.x), !var_2.b.c.yzw, !vec3<bool>(var_2.b.c.x, var_2.a.c.x, var_2.b.d.d.c.x)), func_2().b, true == (var_2.a.a.x < -17663i)).d), vec2<u32>(22850u, _wgslsmith_div_u32(~u_input.e, 1u)), vec2<u32>(~var_2.b.d.d.b.x ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2.d.x, 32092u, var_2.b.d.a.b.x, 0u)), vec4<u32>(45204u, 858u, 1u, var_0.x)), var_0.x));
    return Struct_4(var_2.b.d, vec3<i32>(var_2.a.a.x, -(~(-18399i)), var_2.b.d.c), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(948f)))), vec3<f32>(-161f, _wgslsmith_f_op_f32(ceil(-2878f)), var_2.c.x)), vec2<f32>(567f, 286f), func_4(Struct_3(true, var_2.b.d, !(!vec4<bool>(var_2.b.a, false, true, var_2.b.b.a.c.x)), func_2().b, vec4<bool>(true, var_2.b.e.x, !var_2.b.b.d.c.x, !var_2.a.c.x)), select(var_2.a.c.ywz, vec3<bool>(true, var_2.b.b.a.c.x, u_input.c < -23431i), true), func_4(func_2(), var_2.a.c.xzx, var_2.b.b, var_2.a.c.x).b.b, var_2.b.d.d.c.x).a);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    global1 = -163f;
    return func_2().d.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 31>();
    global1 = _wgslsmith_div_f32(750f, _wgslsmith_div_f32(-1775f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(799f, _wgslsmith_f_op_f32(-1806f - -215f)))));
    global1 = _wgslsmith_f_op_f32(541f * _wgslsmith_f_op_f32(f32(-1f) * -1761f));
    let var_0 = func_5(vec2<bool>(any(vec3<bool>(true, true, true)), true), global0[_wgslsmith_index_u32(u_input.e, 31u)], func_1());
    var var_1 = Struct_1(var_0.a, func_1().e.d.zy, vec4<bool>(true, true, true, true), select(min(~vec3<u32>(u_input.e, 1u, u_input.e), global0[_wgslsmith_index_u32(max(1u, ~u_input.e), 31u)]), ~var_0.d, !all(var_0.c.xzw) || true));
    var_1 = Struct_1(-func_1().e.a, reverseBits(~vec2<u32>(max(3826u, 13840u), _wgslsmith_mult_u32(u_input.e, var_0.d.x))), func_1().e.c, _wgslsmith_mult_vec3_u32(~(vec3<u32>(var_0.d.x, var_1.b.x, var_0.b.x) | _wgslsmith_add_vec3_u32(var_1.d, var_1.d)), var_1.d));
    var var_2 = ~reverseBits(global0[_wgslsmith_index_u32(~(~u_input.e), 31u)]);
    let var_3 = func_4(func_2(), var_1.c.wyx, Struct_2(func_5(var_0.c.yx, ~(~var_0.d), func_1()), _wgslsmith_sub_i32(var_1.a.x, _wgslsmith_div_i32(6080i, 4094i)), u_input.d.x, var_0), true).b.d;
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec4<u32>(0u, ~15050u, _wgslsmith_div_u32(~4294967295u, var_0.b.x), var_1.b.x), vec4<f32>(-386f, -813f, func_1().d.x, _wgslsmith_f_op_f32(f32(-1f) * -737f)));
}

