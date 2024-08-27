struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: i32) -> bool {
    global0 = array<Struct_4, 14>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1432f, arg_1, arg_1, arg_1) + vec4<f32>(-1478f, arg_1, arg_1, arg_1)))), vec4<f32>(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-arg_1), 1576f, _wgslsmith_f_op_f32(-881f - arg_1)))));
    let var_1 = var_0.x;
    global0 = array<Struct_4, 14>();
    var var_2 = Struct_5(vec3<u32>(~_wgslsmith_dot_vec2_u32(~u_input.a, reverseBits(u_input.a)), firstLeadingBit(u_input.a.x), u_input.a.x), arg_3, -341f, Struct_1(i32(-1i) * -(arg_2.x ^ arg_2.x), _wgslsmith_sub_u32(min(abs(21545u), u_input.b), u_input.c)), false);
    return any(!vec3<bool>(var_2.e, false, all(vec3<bool>(var_2.e, var_2.e, var_2.e))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = vec4<bool>(arg_2, any(select(!select(vec3<bool>(arg_1.a, true, false), vec3<bool>(arg_2, arg_1.a, true), vec3<bool>(arg_2, arg_1.a, true)), vec3<bool>(u_input.a.x > 2024u, true, any(vec3<bool>(false, arg_1.a, arg_2))), !(!arg_1.a))), true, all(select(vec4<bool>(!arg_1.a, true, arg_1.a, arg_2), select(select(vec4<bool>(false, arg_2, arg_2, arg_1.a), vec4<bool>(true, arg_2, arg_1.a, arg_2), false), !vec4<bool>(arg_1.a, false, arg_2, arg_1.a), true || arg_1.a), vec4<bool>(true, any(vec2<bool>(true, false)), arg_2 != false, true))));
    global0 = array<Struct_4, 14>();
    var var_1 = firstLeadingBit(_wgslsmith_mod_u32(10964u, ~(~firstLeadingBit(u_input.c))));
    var var_2 = var_0.xwy;
    let var_3 = !arg_2;
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_1.c))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1365f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-816f, -235f)), _wgslsmith_f_op_f32(-1000f - 1035f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(~vec3<u32>(u_input.c, 17308u, u_input.a.x), Struct_3(false, 851f, -978f, vec3<i32>(1i, -18098i, 40407i)), func_3(u_input.b, -2124f, vec2<i32>(-44756i, 42881i), 0i))), -1580f))))));
    var_0 = 1274f;
    let var_1 = Struct_3(true, -865f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2304f, -1277f)), _wgslsmith_f_op_f32(-1f)))), ~vec3<i32>(_wgslsmith_clamp_i32(-34724i, -1i, -29270i), _wgslsmith_div_i32(43445i, -1i), 1i) | vec3<i32>(0i, _wgslsmith_mult_i32(13324i, _wgslsmith_div_i32(9357i, -29323i)), firstTrailingBit(_wgslsmith_add_i32(0i, -15837i))));
    var var_2 = Struct_1(abs(var_1.d.x), ~1u ^ countOneBits(u_input.c));
    var var_3 = vec2<i32>(min(firstLeadingBit(-2147483647i), ~_wgslsmith_sub_i32(5961i, 45554i)), var_1.d.x);
    return Struct_1(~1i, _wgslsmith_add_u32(abs(0u >> ((var_2.b | 4294967295u) % 32u)), _wgslsmith_mod_u32(9050u, ~64401u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec4<i32>) -> u32 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = abs(vec4<u32>(53417u, select(u_input.b, 1u, true), ~4294967295u ^ (arg_1.b ^ (0u | arg_2.a.x)), countOneBits(_wgslsmith_add_u32(arg_2.a.x, 2806u))));
    var var_1 = Struct_3(arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1443f)), -642f, ~arg_3.wzx);
    var_1 = Struct_3(arg_2.c < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1125f, 935f)), _wgslsmith_f_op_f32(trunc(141f))))), 1841f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(507f + 594f))), vec3<i32>(-min(arg_2.b, -17417i) << (u_input.a.x % 32u), -32992i, 0i));
    return 1u;
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1137f)))) - -610f));
    global0 = array<Struct_4, 14>();
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(~_wgslsmith_sub_i32(max(arg_2.c, arg_2.c), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, arg_2.c, arg_2.c, -14609i), vec4<i32>(2147483647i, arg_2.c, 1080i, 0i))), _wgslsmith_sub_i32(countOneBits(_wgslsmith_mod_i32(-2147483647i, -1i)), -(~arg_2.c))), vec2<i32>(_wgslsmith_clamp_i32(arg_2.c, _wgslsmith_add_i32(reverseBits(arg_2.c), -arg_2.c), _wgslsmith_add_i32(18808i, func_2().a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(13732i, 2147483647i), -vec2<i32>(arg_2.c, arg_2.c))));
    var_1 = vec2<i32>(var_1.x, select(-countOneBits(arg_2.c) << (_wgslsmith_add_u32(arg_2.a.x, 1u) % 32u), select(0i, i32(-1i) * -32460i, !any(vec2<bool>(arg_2.b.x, true))), true));
    var var_2 = abs(52479u);
    return vec2<i32>(~0i, 11765i);
}

fn func_7(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    return func_2();
}

fn func_8(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> bool {
    var var_0 = firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(firstLeadingBit(1i), -41584i), ~arg_0.a, -10305i, _wgslsmith_sub_i32(arg_0.a, -30998i) >> (_wgslsmith_add_u32(_wgslsmith_add_u32(arg_2, arg_2), 0u) % 32u)));
    var var_1 = select(vec3<bool>(true, !func_3(~arg_2, _wgslsmith_f_op_f32(min(853f, -249f)), func_6(15260u, false, Struct_2(arg_1, vec3<bool>(false, true, true), 0i)), ~2147483647i), true), vec3<bool>(false, true, true), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -476f) >= _wgslsmith_f_op_f32(trunc(-1525f)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), true));
    var var_2 = !var_1.xx;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-185f, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(1431f, -1953f), vec2<f32>(675f, 809f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-765f + 384f) + _wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_f_op_f32(f32(-1f) * -548f))));
    var var_4 = _wgslsmith_clamp_vec2_u32(abs(u_input.a), select(~firstTrailingBit(arg_1.xy), _wgslsmith_mult_vec2_u32(arg_1.zz, vec2<u32>(25763u, arg_1.x)) & ~(u_input.a ^ vec2<u32>(43435u, 1u)), true), u_input.a);
    return var_3.x >= -475f;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: u32) -> vec3<f32> {
    var var_0 = func_8(func_7(~0u, _wgslsmith_add_vec4_u32(~select(vec4<u32>(27256u, 24317u, arg_2, 4294967295u), vec4<u32>(4294967295u, u_input.b, 37394u, arg_2), arg_0.x), ~vec4<u32>(u_input.b, 0u, arg_2, 0u)), func_6(func_5(func_2(), func_2(), Struct_5(vec3<u32>(u_input.b, 4294967295u, 4294967295u), -5015i, -187f, Struct_1(2147483647i, arg_2), arg_0.x), vec4<i32>(1i, 1i, 1i, 1i)), arg_0.x, Struct_2(vec3<u32>(11334u, 92674u, u_input.c), vec3<bool>(true, arg_0.x, arg_0.x), _wgslsmith_clamp_i32(1i, -1i, -2147483647i)))), _wgslsmith_clamp_vec3_u32(max(firstTrailingBit(~vec3<u32>(4294967295u, arg_2, arg_2)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, arg_2, arg_2), vec3<u32>(arg_2, arg_2, 96882u)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 27435u, 60184u), vec3<u32>(4294967295u, arg_2, 1u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 1u, arg_2), vec3<u32>(43129u, 73362u, arg_2) >> (vec3<u32>(1u, 33762u, arg_2) % vec3<u32>(32u))), 101671u & arg_2, ~max(u_input.a.x, 35835u)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, u_input.c, 0u)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, 7702u), vec3<u32>(u_input.c, arg_2, 8343u)), abs(vec3<u32>(4294967295u, 4294967295u, 28694u))))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(~47764u, firstTrailingBit(26768u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(85003u, u_input.c), u_input.a), false), vec2<u32>(~(~arg_2), 18287u)));
    global0 = array<Struct_4, 14>();
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -547f) * _wgslsmith_f_op_f32(f32(-1f) * -600f)))), 1569f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1706f, -814f), vec2<f32>(1000f, 602f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1497f, -767f) * vec2<f32>(-373f, -1323f))))), ~(35653u >> (_wgslsmith_mult_u32(u_input.c, 41005u) % 32u)))));
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    let var_1 = min(-abs(-abs(vec3<i32>(-1i, 22528i, -2147483647i))), -vec3<i32>(-9817i | func_6(u_input.a.x, false, Struct_2(vec3<u32>(u_input.a.x, 94122u, 4294967295u), vec3<bool>(true, false, true), -1i)).x, -1i, _wgslsmith_mod_i32(func_6(1u, false, Struct_2(vec3<u32>(u_input.a.x, 0u, 57455u), vec3<bool>(false, true, false), 0i)).x, 1i)));
    let var_2 = u_input.a.x;
    let var_3 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c >> (_wgslsmith_clamp_u32(u_input.a.x, ~71745u, var_2) % 32u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-222f, _wgslsmith_div_f32(746f, 385f)))), countOneBits(abs(-reverseBits(var_1.x))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1000f))));
}

