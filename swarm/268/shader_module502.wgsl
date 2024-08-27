struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-571f, 1650f, 207f, 1000f);

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = select(!select(!(!vec4<bool>(true, false, arg_3.b.a, arg_3.e.a)), !select(vec4<bool>(false, arg_3.e.a, arg_3.b.a, arg_3.e.a), vec4<bool>(false, false, true, arg_3.b.a), vec4<bool>(arg_3.e.a, true, arg_3.e.a, arg_3.b.a)), arg_3.e.a), !vec4<bool>(~29932u != u_input.a, true, arg_3.e.a, !(true || arg_3.e.a)), vec4<bool>(arg_3.b.a | arg_3.b.a, select(true, true, !arg_3.b.a) || true, arg_3.b.a, all(!select(vec4<bool>(false, true, arg_3.b.a, false), vec4<bool>(true, false, arg_3.b.a, false), true))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(625f + _wgslsmith_f_op_f32(arg_0.x + -1458f)), arg_3.d.x)), -1028f));
    return ~(~u_input.a & _wgslsmith_div_u32(u_input.a, ~(u_input.a & 1u)));
}

fn func_2(arg_0: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(func_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(595f, global0.x))))), -abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -8788i, u_input.b.x), u_input.b.zxw)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.zxy)), Struct_3(~(u_input.b.x ^ u_input.b.x), Struct_1(true, u_input.b.x, u_input.b.yy), _wgslsmith_mod_vec4_i32(u_input.b | vec4<i32>(25941i, u_input.b.x, -2707i, u_input.b.x), vec4<i32>(-2147483647i, u_input.b.x, 1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(983f, 1530f, global0.x) - global0.xyx), Struct_1(global0.x > -1000f, ~1i, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-4061i, -2147483647i))))), reverseBits(0u));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    var var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 78992u), ~1767u), arg_0.a.x, 1u), _wgslsmith_div_vec4_u32(~(vec4<u32>(0u, 30864u, arg_0.a.x, 4294967295u) & arg_0.a) | max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_0.a.x, 80922u, arg_0.a.x), vec4<u32>(arg_0.a.x, var_0, u_input.a, u_input.a)), ~vec4<u32>(1u, arg_0.a.x, 1731u, arg_0.a.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a), _wgslsmith_div_vec3_u32(arg_0.a.wzy, vec3<u32>(var_0, 5289u, 47993u))), var_0, ~1u, 15085u)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 876f, 1213f, global0.x) - vec4<f32>(1396f, -642f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1986f, var_1, var_1, global0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(979f, var_1, -677f, 1030f) + vec4<f32>(global0.x, global0.x, -296f, -463f)), vec4<bool>(false, false, true, false)))) * vec4<f32>(var_1, _wgslsmith_f_op_f32(989f - _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x + -398f))))));
    var var_3 = -730f;
    return global1[_wgslsmith_index_u32(~var_0, 12u)];
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    let var_0 = func_2(Struct_5(~(~abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    var var_1 = Struct_3(arg_1.e.b, Struct_1(arg_3.e.a, -1i, vec2<i32>(~(2147483647i & u_input.b.x), arg_0.x)), arg_3.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.zwz * arg_3.d), vec3<f32>(_wgslsmith_f_op_f32(253f * _wgslsmith_f_op_f32(ceil(1291f))), arg_3.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_f_op_f32(164f + global0.x))), vec3<bool>(!arg_2 && func_2(Struct_5(vec4<u32>(u_input.a, 24590u, 4294967295u, 1u))).a, !any(vec4<bool>(var_0.a, arg_3.b.a, true, true)), arg_1.b.a))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(61368u, _wgslsmith_clamp_u32(u_input.a, 1u, 7149u)), 12u)]);
    var var_2 = Struct_4(func_2(Struct_5(_wgslsmith_div_vec4_u32(vec4<u32>(2960u, 0u, u_input.a, 0u), max(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u))))).a, 0i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-5629i, arg_0.x | arg_0.x, ~10094i), arg_1.c.xyy), 0u, !select(select(vec3<bool>(arg_1.b.a, var_0.a, arg_2), select(vec3<bool>(var_1.b.a, var_0.a, true), vec3<bool>(false, arg_1.b.a, arg_1.e.a), vec3<bool>(arg_2, false, false)), vec3<bool>(var_1.b.a, var_0.a, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, arg_3.b.a), true), vec3<bool>(var_1.e.a, false, arg_2), !var_1.e.a), any(select(vec3<bool>(true, true, var_1.b.a), vec3<bool>(var_1.e.a, var_1.b.a, var_1.e.a), vec3<bool>(false, arg_3.b.a, true)))), true);
    let var_3 = Struct_4(!func_2(Struct_5(vec4<u32>(u_input.a, 42932u, var_2.c, 11006u) << (vec4<u32>(u_input.a, u_input.a, 51824u, var_2.c) % vec4<u32>(32u)))).a, true, 4294967295u, select(!vec3<bool>(all(vec4<bool>(false, false, arg_3.b.a, arg_3.b.a)), true, func_2(Struct_5(vec4<u32>(var_2.c, 4294967295u, 4294967295u, 45755u))).a), vec3<bool>(var_0.a, false, true), var_1.e.a), true);
    var var_4 = Struct_4(var_3.d.x, any(!select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, arg_2), vec3<bool>(var_3.e, true, true))), _wgslsmith_div_u32(_wgslsmith_div_u32(~(~var_2.c), 0u), ~(~4294967295u) >> (u_input.a % 32u)), select(!var_3.d, !(!(!vec3<bool>(var_3.a, arg_3.e.a, true))), true), all(vec4<bool>(false, !(u_input.a <= 3236u), var_0.a, arg_1.b.a)));
    return !select(!select(select(vec4<bool>(true, arg_1.e.a, true, false), vec4<bool>(true, false, true, var_1.b.a), vec4<bool>(var_4.b, true, true, true)), vec4<bool>(false, arg_3.e.a, false, false), !vec4<bool>(false, var_4.b, false, true)), vec4<bool>(false, true, ~arg_3.e.b < firstLeadingBit(var_0.c.x), 0i <= u_input.b.x), !(!arg_3.e.a));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_1(!((!arg_0.b | false) && arg_0.a), _wgslsmith_dot_vec3_i32(~u_input.b.wxz << (vec3<u32>(1u, u_input.a & 15604u, ~0u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.b.yzy ^ (u_input.b.xzx | u_input.b.yxy), vec3<i32>(min(u_input.b.x, u_input.b.x), 2147483647i, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x))))), vec2<i32>(-19832i, u_input.b.x));
    var var_1 = !(!func_4(-select(var_0.c, vec2<i32>(1i, 86171i), vec2<bool>(false, true)), Struct_3(0i, global1[_wgslsmith_index_u32(u_input.a << (u_input.a % 32u), 12u)], vec4<i32>(0i, -1i, u_input.b.x, u_input.b.x), vec3<f32>(-1000f, -712f, -445f), func_2(Struct_5(vec4<u32>(12861u, u_input.a, 73488u, arg_0.c)))), any(!vec3<bool>(false, arg_0.d.x, false)), Struct_3(-var_0.c.x, Struct_1(arg_0.d.x, 2147483647i, var_0.c), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), _wgslsmith_f_op_vec3_f32(-global0.wwz), Struct_1(var_0.a, u_input.b.x, vec2<i32>(50721i, -1i)))));
    global1 = array<Struct_1, 12>();
    var var_2 = Struct_1(_wgslsmith_mult_i32(countOneBits(var_0.b) << (4294967295u % 32u), -1i) > (select(abs(31206i), _wgslsmith_mod_i32(27224i, -43370i), false) & firstTrailingBit(var_0.c.x)), _wgslsmith_clamp_i32(~u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~var_0.c.x, u_input.b.x | var_0.b), 1i, u_input.b.x), -61258i), var_0.c);
    let var_3 = max(var_0.c, ~vec2<i32>(-20210i, u_input.b.x));
    return Struct_2(firstLeadingBit(var_2.c & vec2<i32>(_wgslsmith_div_i32(-2147483647i, var_0.c.x), -var_3.x)), u_input.b.xw);
}

fn func_5(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(false, !func_4(~arg_1.b, Struct_3(17785i & u_input.b.x, global1[_wgslsmith_index_u32(63278u, 12u)], vec4<i32>(-1i, u_input.b.x, 1i, arg_1.b.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.x, -1021f, global0.x), global0.wwx)), global1[_wgslsmith_index_u32(~u_input.a, 12u)]), false, Struct_3(_wgslsmith_add_i32(arg_1.a.x, arg_1.b.x), global1[_wgslsmith_index_u32(~4294967295u, 12u)], vec4<i32>(-71846i, 48067i, arg_1.a.x, 0i), _wgslsmith_div_vec3_f32(vec3<f32>(366f, global0.x, 776f), global0.xyx), global1[_wgslsmith_index_u32(112759u & u_input.a, 12u)])).x, u_input.a, func_4(vec2<i32>(firstLeadingBit(arg_1.b.x), u_input.b.x), Struct_3(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a, 12u)], -(~u_input.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.yxw), vec3<f32>(global0.x, global0.x, -1000f)), global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.a), 12u)]), !arg_0, Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), vec3<i32>(6503i, 0i, arg_1.a.x)), u_input.b.xxz >> (vec3<u32>(u_input.a, 48671u, 70162u) % vec3<u32>(32u))), func_2(Struct_5(vec4<u32>(56857u, u_input.a, 43424u, u_input.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(10567i, 1i, -2147483647i, u_input.b.x) | u_input.b, ~vec4<i32>(0i, -2147483647i, arg_1.b.x, -2147483647i), countOneBits(u_input.b)), global0.xww, func_2(Struct_5(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))))).zww, any(vec4<bool>(all(vec3<bool>(arg_0, arg_0, true)), true, (arg_0 | true) && true, global0.x >= _wgslsmith_f_op_f32(sign(1326f)))));
    var var_1 = firstLeadingBit(vec4<i32>(max(23708i, _wgslsmith_clamp_i32(1i, u_input.b.x, arg_1.a.x)), ~(~u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, arg_1.a.x) >> (19837u % 32u), u_input.b.x >> (~104543u % 32u)) << (~(~vec4<u32>(1u, 0u, u_input.a, 34477u) ^ vec4<u32>(u_input.a, u_input.a, u_input.a, var_0.c)) % vec4<u32>(32u)));
    var_0 = Struct_4(var_0.b, !var_0.b, ~19458u << ((~(~u_input.a) & var_0.c) % 32u), vec3<bool>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -429f))), true), var_0.b);
    var var_2 = ~vec4<u32>(_wgslsmith_mod_u32(1u, 68736u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.c, 9579u), ~vec2<u32>(u_input.a, var_0.c), true), vec2<u32>(4294967295u, ~u_input.a)), var_0.c, var_0.c);
    var_0 = Struct_4(true, !(!arg_0), ~var_0.c, vec3<bool>(select(false, _wgslsmith_add_i32(-2147483647i, 2147483647i) >= _wgslsmith_dot_vec2_i32(arg_1.a, vec2<i32>(u_input.b.x, var_1.x)), all(var_0.d)), !any(!vec4<bool>(var_0.d.x, var_0.b, false, arg_0)), true), true);
    return func_2(Struct_5(vec4<u32>(~(var_2.x & 12251u), 3603u, 23335u, _wgslsmith_mod_u32(4176u, select(var_2.x, 0u, var_0.b)))));
}

fn func_6(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> vec4<u32> {
    global1 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1887f, 910f) + vec4<f32>(1000f, 621f, 1247f, -570f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1864f, 766f, 2013f) - vec4<f32>(-221f, global0.x, 911f, global0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-185f, global0.x, global0.x, global0.x) - vec4<f32>(global0.x, -1445f, global0.x, global0.x))))), vec4<f32>(-1034f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), global0.x)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(196f - global0.x)), -852f), select(!func_4(vec2<i32>(52406i, arg_2.c.x), Struct_3(13980i, arg_2, u_input.b, vec3<f32>(-846f, global0.x, global0.x), Struct_1(true, -2147483647i, u_input.b.ww)), true, Struct_3(51438i, arg_2, vec4<i32>(arg_2.c.x, -37176i, -2147483647i, -2147483647i), global0.yyz, arg_2)), func_4(_wgslsmith_sub_vec2_i32(max(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(30743i, -1i)), vec2<i32>(u_input.b.x, 13277i)), Struct_3(select(u_input.b.x, u_input.b.x, true), arg_2, -vec4<i32>(arg_2.c.x, -1i, arg_2.c.x, u_input.b.x), vec3<f32>(670f, 349f, 1965f), func_2(Struct_5(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)))), arg_0.x, Struct_3(2277i, global1[_wgslsmith_index_u32(0u, 12u)], vec4<i32>(747i, arg_2.c.x, arg_2.c.x, 2147483647i), _wgslsmith_f_op_vec3_f32(select(global0.wxy, global0.wzz, vec3<bool>(true, arg_0.x, arg_2.a))), arg_2)), select(vec4<bool>(true, all(arg_0), false, true || arg_2.a), vec4<bool>(true, true, func_5(false, Struct_2(arg_2.c, vec2<i32>(u_input.b.x, arg_1))).a, !arg_2.a), !vec4<bool>(false, true, arg_0.x, arg_0.x)))));
    global1 = array<Struct_1, 12>();
    let var_1 = u_input.a;
    return vec4<u32>(u_input.a, (var_1 | 0u) & (firstLeadingBit(4294967295u) | _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, 4112u, u_input.a), vec4<u32>(1u, 4294967295u, 1u, 4294967295u))), ~var_1, ~_wgslsmith_add_u32(~u_input.a, var_1)) >> (((~_wgslsmith_sub_vec4_u32(vec4<u32>(82530u, u_input.a, 0u, var_1), vec4<u32>(47022u, 1u, 24595u, 113759u)) >> (vec4<u32>(select(var_1, 1u, true), ~0u, 0u | u_input.a, u_input.a) % vec4<u32>(32u))) ^ min(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, var_1)), ~(vec4<u32>(45035u, 1893u, u_input.a, 0u) << (vec4<u32>(var_1, 35974u, u_input.a, 34314u) % vec4<u32>(32u))))) % vec4<u32>(32u));
}

fn func_7(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.yyx))), _wgslsmith_f_op_vec3_f32(abs(global0.yxw)), arg_2));
    let var_1 = ~arg_1.x;
    let var_2 = ~reverseBits(abs(~(~2147483647i)));
    global1 = array<Struct_1, 12>();
    let var_3 = 0i;
    return vec2<u32>(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yz) - global0.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_0.x))), -u_input.b.yyy, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, _wgslsmith_f_op_f32(ceil(-567f)), 303f))), Struct_3(_wgslsmith_clamp_i32(-10047i, i32(-1i) * -1i, 2147483647i), global1[_wgslsmith_index_u32(arg_1.x, 12u)], u_input.b, global0.zww, func_2(Struct_5(arg_1)))), ~firstTrailingBit(0u | countOneBits(arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -21935i;
    global1 = array<Struct_1, 12>();
    global1 = array<Struct_1, 12>();
    var var_1 = ~func_7(!vec4<bool>(select(false, false, true), false, true, false), func_6(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), u_input.b.x, func_5(true, func_1(Struct_4(true, true, 4294967295u, vec3<bool>(true, true, false), false), vec4<f32>(229f, -739f, -870f, global0.x), u_input.a))), !func_4(func_1(Struct_4(true, false, 4294967295u, vec3<bool>(true, true, false), false), vec4<f32>(-1000f, 214f, 1673f, -727f), u_input.a).b, Struct_3(9141i, Struct_1(true, u_input.b.x, u_input.b.yy), vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), global0.zzx, global1[_wgslsmith_index_u32(1u, 12u)]), any(vec3<bool>(true, false, true)), Struct_3(42527i, Struct_1(true, u_input.b.x, vec2<i32>(55094i, u_input.b.x)), u_input.b, global0.www, Struct_1(false, u_input.b.x, u_input.b.xx))).wxw);
    let var_2 = !select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), any(vec4<bool>(false, true, false, false))), select(func_4(vec2<i32>(-2147483647i, u_input.b.x), Struct_3(u_input.b.x, global1[_wgslsmith_index_u32(var_1.x, 12u)], vec4<i32>(u_input.b.x, -44575i, 2147483647i, -2147483647i), vec3<f32>(global0.x, 654f, -1594f), global1[_wgslsmith_index_u32(u_input.a, 12u)]), false, Struct_3(u_input.b.x, global1[_wgslsmith_index_u32(var_1.x, 12u)], vec4<i32>(0i, -2702i, -1i, -2147483647i), vec3<f32>(global0.x, global0.x, -301f), global1[_wgslsmith_index_u32(1u, 12u)])).yw, select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, -341f <= global0.x)), vec2<bool>(all(vec2<bool>(true, false)), true), (any(vec4<bool>(false, true, true, true)) | func_5(true, Struct_2(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(-13826i, 0i))).a) && true);
    var var_3 = global1[_wgslsmith_index_u32(~(~(~(var_1.x ^ u_input.a) & _wgslsmith_mult_u32(u_input.a, ~1905u))), 12u)];
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(ceil(global0.x))))) + _wgslsmith_f_op_f32(floor(global0.x))), ~((~vec2<u32>(var_1.x, 0u) & max(vec2<u32>(1u, var_1.x), vec2<u32>(var_1.x, 1u))) | abs(min(vec2<u32>(32657u, var_1.x), vec2<u32>(var_1.x, 0u)))), var_3.b);
}

