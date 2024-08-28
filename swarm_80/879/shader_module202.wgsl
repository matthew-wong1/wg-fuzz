struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> bool {
    global0 = vec2<bool>(!(!(true & global0.x)) && any(!vec3<bool>(true, global0.x, false)), !(true | any(!vec3<bool>(false, global0.x, false))));
    global0 = !select(!select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), !vec2<bool>(true, global0.x)), select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, true), select(vec2<bool>(false, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x)), false), !select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, true), global0.x)), true);
    global0 = vec2<bool>(true, !all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false)) || global0.x);
    var var_0 = vec3<i32>(-6901i, -2147483647i, 1i);
    global0 = vec2<bool>(u_input.a.x >= _wgslsmith_mult_i32(0i, ~var_0.x), false);
    return true;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_4) -> vec3<bool> {
    global0 = vec2<bool>(false, true);
    global0 = select(vec2<bool>(true, arg_1), !arg_3.b.yy, false);
    global0 = arg_3.b.xz;
    let var_0 = arg_3.d;
    var var_1 = arg_3.a.e.a;
    return select(select(select(vec3<bool>(arg_1 || global0.x, arg_1, arg_3.b.x), vec3<bool>(arg_3.b.x, select(false, global0.x, arg_1), any(vec3<bool>(false, true, false))), arg_3.b), vec3<bool>(true, !any(arg_3.b.yx), !(arg_3.d.b | arg_1)), -2147483647i < -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, var_0.a, u_input.b.x), vec4<i32>(20243i, arg_0, arg_0, u_input.b.x))), vec3<bool>((any(vec4<bool>(false, arg_3.a.b, false, true)) || (49065u >= u_input.c)) || arg_3.d.b, arg_1 || (1i <= ~arg_3.a.a), false), global0.x);
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec4<i32>(-2147483647i, u_input.b.x, ~1i, _wgslsmith_div_i32(1i, arg_2.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-549f, arg_1.x, 577f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(800f * -1000f)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_2.c.a))) - vec3<f32>(arg_0, 171f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))), !all(vec4<bool>(any(vec3<bool>(arg_2.b, var_0, global0.x)), select(true, global0.x, var_0), var_0, true))));
    let var_3 = select(vec3<bool>(!(!any(vec3<bool>(true, arg_2.b, global0.x))), ((arg_1.x != arg_0) | var_0) | var_0, (var_0 && false) || any(vec3<bool>(arg_2.b, true, global0.x))), func_4(var_1.x, func_3(), ~(firstTrailingBit(vec3<u32>(u_input.c, 4294967295u, 1u)) | ~vec3<u32>(71810u, 1u, u_input.c)), Struct_4(Struct_2(0i, var_0, arg_2.c, Struct_1(arg_0), Struct_1(-787f)), vec3<bool>(global0.x, true, false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(4294967295u, 0u, 13547u)), arg_2)), select(!func_4(u_input.a.x | -62899i, var_0, vec3<u32>(u_input.c, u_input.c, 4294967295u) & vec3<u32>(u_input.c, u_input.c, 13233u), Struct_4(Struct_2(arg_2.a, global0.x, Struct_1(-719f), arg_2.e, arg_2.c), vec3<bool>(global0.x, false, arg_2.b), 4294967295u, arg_2)), !(!func_4(2147483647i, global0.x, vec3<u32>(u_input.c, u_input.c, 4294967295u), Struct_4(Struct_2(var_1.x, var_0, arg_2.c, Struct_1(arg_2.e.a), Struct_1(var_2.x)), vec3<bool>(false, arg_2.b, var_0), 7390u, arg_2))), true));
    global0 = !select(var_3.yz, vec2<bool>(!(u_input.b.x < arg_2.a), false), var_3.zx);
    return arg_2.d;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = Struct_4(Struct_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, arg_2.c, arg_2.c, arg_2.c), vec4<i32>(arg_2.c, u_input.a.x, -1i, -2147483647i)), ~arg_0), all(vec4<bool>(all(vec2<bool>(false, global0.x)), all(vec3<bool>(true, global0.x, global0.x)), false, global0.x || true)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.a, 1258f))), Struct_2(abs(arg_2.c), func_4(u_input.a.x, global0.x, vec3<u32>(arg_1, 1u, u_input.c), Struct_4(Struct_2(arg_2.c, false, arg_2.a, Struct_1(arg_2.b.x), arg_2.a), vec3<bool>(true, true, true), arg_1, Struct_2(21812i, false, Struct_1(1178f), arg_2.a, arg_2.a))).x, Struct_1(arg_2.a.a), Struct_1(580f), func_2(2363f, vec2<f32>(811f, arg_2.b.x), Struct_2(arg_2.c, global0.x, arg_2.a, Struct_1(arg_2.b.x), Struct_1(arg_2.a.a))))), arg_2.a, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + -590f) * arg_2.b.x), vec2<f32>(_wgslsmith_f_op_f32(min(136f, -258f)), -151f), Struct_2(-24660i, global0.x, Struct_1(-2137f), arg_2.a, func_2(arg_2.b.x, arg_2.b.xw, Struct_2(arg_0.x, false, arg_2.a, Struct_1(-715f), arg_2.a))))), vec3<bool>(false, !(!global0.x), global0.x), 0u, Struct_2(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(-1i, -3179i, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.b.x, 2147483647i, arg_2.c, arg_2.c)), global0.x, arg_2.a, Struct_1(1772f), func_2(_wgslsmith_f_op_f32(max(-259f, -612f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a.a, 1045f) + vec2<f32>(arg_2.a.a, arg_2.b.x))), Struct_2(1i, !global0.x, arg_2.a, Struct_1(arg_2.a.a), arg_2.a))));
    var var_1 = Struct_1(var_0.d.e.a);
    let var_2 = abs(vec4<u32>(u_input.c, ~(~4294967295u), 77665u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.c, 16799u, arg_1), vec4<u32>(17159u, var_0.c, u_input.c, 103919u))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_0.c, ~0u, 0u), ~vec4<u32>(u_input.c, arg_1, u_input.c, 1u), ~vec4<u32>(arg_1, arg_1, 4294967295u, u_input.c)));
    var_1 = Struct_1(-217f);
    var var_3 = Struct_4(var_0.a, vec3<bool>(true, true, true), var_2.x, Struct_2(countOneBits(arg_0.x), !((var_2.x == var_2.x) | !var_0.a.b), func_2(var_0.d.c.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a, -747f), arg_2.b.xy))), Struct_2(40707i | var_0.d.a, true, func_2(arg_2.a.a, vec2<f32>(var_0.a.d.a, 2084f), var_0.a), Struct_1(arg_2.a.a), func_2(190f, vec2<f32>(-378f, var_0.d.e.a), var_0.d))), func_2(167f, vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), 143f), Struct_2(-var_0.a.a, !global0.x, Struct_1(arg_2.a.a), var_0.a.e, arg_2.a)), var_0.a.e));
    return true;
}

fn func_1() -> f32 {
    global0 = !vec2<bool>(func_5(~max(vec4<i32>(-1i, -1i, -19133i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, 2147483647i, u_input.a.x)), reverseBits(_wgslsmith_mod_u32(8242u, 22005u)), Struct_3(func_2(566f, vec2<f32>(-227f, 300f), Struct_2(1i, global0.x, Struct_1(-486f), Struct_1(837f), Struct_1(1327f))), vec4<f32>(1075f, -755f, -194f, 1000f), -u_input.a.x)), func_5(~(~vec4<i32>(-2147483647i, u_input.a.x, 28304i, u_input.a.x)), 4294967295u, Struct_3(func_2(-289f, vec2<f32>(117f, -265f), Struct_2(u_input.a.x, true, Struct_1(-503f), Struct_1(-974f), Struct_1(414f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-846f, -670f, 154f, -440f)), u_input.b.x)));
    global0 = !(!select(vec2<bool>(!global0.x, true), vec2<bool>(true, global0.x), 46958u != (u_input.c >> (52786u % 32u))));
    var var_0 = vec3<bool>(false, global0.x, !func_4(u_input.b.x, false, ~reverseBits(vec3<u32>(u_input.c, u_input.c, 10342u)), Struct_4(Struct_2(u_input.b.x, global0.x, Struct_1(-537f), Struct_1(-1559f), Struct_1(-510f)), vec3<bool>(global0.x, global0.x, global0.x), firstTrailingBit(u_input.c), Struct_2(u_input.b.x, true, Struct_1(307f), Struct_1(138f), Struct_1(829f)))).x);
    global0 = var_0.zx;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(func_2(_wgslsmith_f_op_f32(811f + 1671f), vec2<f32>(-863f, -1112f), Struct_2(-1i, global0.x, Struct_1(407f), Struct_1(930f), Struct_1(-671f))).a, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(410f, -1008f)))))));
    return _wgslsmith_f_op_f32(-var_1.x);
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> vec2<bool> {
    let var_0 = false;
    let var_1 = Struct_3(arg_3.a.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.b))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -589f, -319f, 1f))), 1i);
    var var_2 = Struct_3(func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-156f))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-605f, 316f) * _wgslsmith_f_op_vec2_f32(var_1.b.zz * vec2<f32>(arg_1.b.x, arg_2))))), arg_3.a), vec4<f32>(_wgslsmith_div_f32(1780f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(306f, -2468f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-328f * _wgslsmith_f_op_f32(floor(-354f))))), arg_1.a.a, var_1.b.x), u_input.b.x);
    let var_3 = arg_3.d;
    let var_4 = select(_wgslsmith_sub_vec2_i32(select(u_input.b, vec2<i32>(max(34479i, 2147483647i), _wgslsmith_sub_i32(var_3.a, 2147483647i)), false | !var_0), abs(~u_input.a.xx)), u_input.a.yz, !(!vec2<bool>(0u < arg_0, true)));
    return arg_3.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!func_6(u_input.c, Struct_3(Struct_1(128f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 354f, 1486f, -500f)), 1i), _wgslsmith_f_op_f32(func_1()), Struct_4(Struct_2(-23394i, false, Struct_1(129f), Struct_1(-345f), Struct_1(214f)), vec3<bool>(global0.x, global0.x, global0.x), 0u, Struct_2(2147483647i, global0.x, Struct_1(-729f), Struct_1(1530f), Struct_1(-698f)))));
    let var_0 = Struct_2(-u_input.b.x, any(vec2<bool>(false, true)), func_2(_wgslsmith_f_op_f32(-333f - _wgslsmith_f_op_f32(min(-1425f, _wgslsmith_f_op_f32(f32(-1f) * -578f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(548f, -1346f) + vec2<f32>(494f, 828f))), Struct_2(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), u_input.a)), 1u < ~u_input.c, func_2(_wgslsmith_f_op_f32(f32(-1f) * -891f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 351f)), Struct_2(u_input.a.x, global0.x, Struct_1(542f), Struct_1(546f), Struct_1(2432f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -364f)), Struct_1(-328f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1027f + -521f)) - -369f)), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-845f, -1577f), 1172f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -536f), -756f)), Struct_2(u_input.a.x, !global0.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -259f)), func_2(-518f, _wgslsmith_f_op_vec2_f32(vec2<f32>(283f, -918f) * vec2<f32>(643f, 1308f)), Struct_2(-3443i, global0.x, Struct_1(334f), Struct_1(-530f), Struct_1(-611f))), func_2(_wgslsmith_f_op_f32(741f * -221f), vec2<f32>(1646f, 892f), Struct_2(-22405i, false, Struct_1(-1000f), Struct_1(864f), Struct_1(-366f))))));
    let var_1 = vec4<bool>(all(select(select(vec4<bool>(global0.x, false, true, true), vec4<bool>(global0.x, false, true, var_0.b), vec4<bool>(global0.x, false, false, global0.x)), select(!vec4<bool>(false, false, false, var_0.b), select(vec4<bool>(var_0.b, true, false, global0.x), vec4<bool>(var_0.b, false, var_0.b, var_0.b), true), !var_0.b), !select(vec4<bool>(var_0.b, true, global0.x, true), vec4<bool>(var_0.b, false, false, true), vec4<bool>(var_0.b, false, var_0.b, global0.x)))), true, var_0.b, func_5(-(~(-vec4<i32>(-18611i, u_input.a.x, 14644i, u_input.a.x))), u_input.c, Struct_3(Struct_1(_wgslsmith_f_op_f32(var_0.d.a + 487f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, 742f, var_0.e.a, 395f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.a, var_0.c.a, -2296f, var_0.d.a) - vec4<f32>(var_0.e.a, var_0.c.a, 1185f, var_0.d.a))), 1i)));
    let var_2 = 41817u;
    let var_3 = var_1.wz;
    let var_4 = select(var_3.x, false, !var_3.x);
    global0 = func_6(~(~(~u_input.c)), Struct_3(Struct_1(_wgslsmith_f_op_f32(max(100f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.a, -1406f, 1087f, var_0.c.a), vec4<f32>(-278f, var_0.c.a, 1995f, -1382f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(464f, 1719f, var_0.c.a, 1000f))), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.a - _wgslsmith_f_op_f32(129f + var_0.e.a))), Struct_4(Struct_2(~(~(-41120i)), any(!var_1), func_2(_wgslsmith_f_op_f32(-var_0.e.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(374f, var_0.d.a)), Struct_2(var_0.a, global0.x, var_0.e, Struct_1(926f), Struct_1(-362f))), var_0.e, func_2(1054f, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.a, var_0.e.a) - vec2<f32>(-1403f, var_0.d.a)), var_0)), vec3<bool>(func_5(max(vec4<i32>(1i, var_0.a, var_0.a, -2147483647i), vec4<i32>(var_0.a, -19795i, 2147483647i, 1i)), 0u, Struct_3(Struct_1(-2005f), vec4<f32>(-549f, 1194f, var_0.d.a, -796f), var_0.a)), var_0.a != firstTrailingBit(u_input.b.x), global0.x), var_2, Struct_2(var_0.a, true, Struct_1(-462f), Struct_1(_wgslsmith_f_op_f32(-var_0.e.a)), Struct_1(-1568f))));
    let var_5 = var_0.e.a;
    var var_6 = select(var_1.wzx, var_1.wzw, var_1.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(u_input.c, ~var_2, ~u_input.c))), _wgslsmith_f_op_f32(step(var_5, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1046f)))))), 56628u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_5, var_5, var_5), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.e.a, var_5, -640f))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, -999f, -1245f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-747f, var_5, var_0.e.a))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(944f, var_5, 359f), vec3<f32>(var_5, var_5, var_5))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-488f, var_5, var_5))))))));
}

