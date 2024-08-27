struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-191f + _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.c.x) + arg_2.a.c.x))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-783f)))))));
    var_0 = Struct_5(795f);
    return select(!(!(!(!arg_2.a.b.www))), select(select(arg_2.c.b.wyy, arg_0.b.yzz, !vec3<bool>(arg_1, arg_2.a.b.x, arg_2.a.b.x)), vec3<bool>(arg_0.c.x != -1508f, all(select(vec4<bool>(arg_0.b.x, false, arg_2.c.b.x, false), vec4<bool>(true, arg_1, arg_2.a.b.x, arg_0.b.x), true)), select(true, arg_0.b.x, select(true, true, arg_0.b.x))), arg_0.b.yww), !vec3<bool>((false != arg_0.b.x) & true, false, !(4294967295u > arg_2.a.a)));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = all(!vec2<bool>(false, any(vec3<bool>(arg_0, arg_0, arg_0))));
    var var_1 = !select(func_3(Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.zyz, vec3<u32>(u_input.a.x, 1u, u_input.a.x)), !vec4<bool>(arg_0, true, true, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(-686f, 744f, -1279f) + vec3<f32>(310f, 1103f, -579f)), 981f, 22093i), true & any(vec3<bool>(arg_0, arg_0, arg_0)), Struct_2(Struct_1(u_input.a.x, vec4<bool>(arg_0, false, false, true), vec3<f32>(424f, -1281f, 831f), 1068f, 2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(45880u, u_input.a.x, 13782u, 54988u), u_input.a), Struct_1(39786u, vec4<bool>(arg_0, true, arg_0, true), vec3<f32>(-343f, 1000f, 1121f), -640f, 24901i)), ~vec4<i32>(313i, -2147483647i, -25498i, -2147483647i)), !vec3<bool>(arg_0, false == arg_0, true), !vec3<bool>(32049u <= u_input.a.x, true, true));
    let var_2 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x), u_input.a.x);
    return min(-((firstTrailingBit(-2147483647i) & -2372i) >> (countOneBits(~1u) % 32u)), select(2147483647i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -2147483647i), -vec3<i32>(-2147483647i, 0i, 0i)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, countOneBits(56720i)), (var_2 <= 1u) & arg_0), true));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<i32>) -> i32 {
    var var_0 = func_2(true);
    var var_1 = false;
    var var_2 = arg_2;
    var var_3 = Struct_2(Struct_1(11090u, arg_2.b.c.b, var_2.c.c, -2561f, ~(-2147483647i)), ~1u, Struct_1(10322u & ~(~u_input.a.x), vec4<bool>(arg_1.x | all(var_2.b.b.xz), !(!arg_2.c.b.x), arg_1.x, !all(arg_1.xzy)), var_2.c.c, _wgslsmith_f_op_f32(min(1701f, arg_2.b.c.c.x)), var_2.c.e));
    var_1 = select(func_3(Struct_1(_wgslsmith_sub_u32(2011u, _wgslsmith_dot_vec3_u32(vec3<u32>(38678u, 6784u, 4294967295u), u_input.a.zyx)), arg_1, _wgslsmith_f_op_vec3_f32(var_2.c.c * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.d, -1073f, -517f) - vec3<f32>(2474f, var_3.c.c.x, 438f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.c.x * -544f) + var_3.a.d), countOneBits(arg_3.x) ^ -1i), arg_0, Struct_2(arg_2.b.c, ~_wgslsmith_clamp_u32(arg_2.b.c.a, 4294967295u, u_input.a.x), var_2.b.c), vec4<i32>(52359i, var_3.a.e, arg_3.x, ~_wgslsmith_mult_i32(arg_2.c.e, -1i))).x, false, var_2.c.b.x);
    return i32(-1i) * -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-arg_1);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)))) + _wgslsmith_f_op_f32(1598f * _wgslsmith_f_op_f32(min(-1175f, _wgslsmith_f_op_f32(f32(-1f) * -892f))))) + -616f);
    let var_1 = vec2<bool>(!all(select(func_3(Struct_1(u_input.a.x, vec4<bool>(false, true, false, true), vec3<f32>(-1000f, arg_2, 264f), -289f, arg_0.x), false, Struct_2(Struct_1(1u, vec4<bool>(true, false, true, false), vec3<f32>(arg_1, arg_2, arg_2), 2442f, 2147483647i), 1u, Struct_1(u_input.a.x, vec4<bool>(false, true, true, true), vec3<f32>(-628f, arg_2, -328f), -266f, 16231i)), vec4<i32>(arg_0.x, 10430i, arg_0.x, 1i)).yy, vec2<bool>(false, true), vec2<bool>(true, true))), func_3(Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 2144f, 341f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-189f, arg_2, -612f), vec3<f32>(arg_1, -1939f, arg_1)))), arg_1, ~arg_0.x), !all(func_3(Struct_1(4294967295u, vec4<bool>(true, true, false, false), vec3<f32>(1000f, -1980f, 431f), arg_1, arg_0.x), true, Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), vec3<f32>(arg_2, -291f, arg_1), -834f, 54801i), 27545u, Struct_1(4294967295u, vec4<bool>(false, true, false, true), vec3<f32>(752f, 623f, 520f), -2477f, arg_0.x)), arg_0).zx), Struct_2(Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, -1000f, 452f) + vec3<f32>(-1841f, arg_2, 483f)), -526f, arg_0.x), 32526u, Struct_1(u_input.a.x, vec4<bool>(false, false, true, true), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, 1209f, 603f))), _wgslsmith_f_op_f32(-arg_2), arg_0.x)), vec4<i32>(_wgslsmith_mult_i32(-arg_0.x, firstLeadingBit(arg_0.x)), -arg_0.x, 1i, func_2(u_input.a.x <= u_input.a.x))).x);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(select(-2037f, 1590f, reverseBits(-30981i) >= (arg_0.x | arg_0.x))), Struct_3(-_wgslsmith_div_vec3_i32(arg_0.wyw, vec3<i32>(arg_0.x, arg_0.x, -47597i)) >> (u_input.a.yzx % vec3<u32>(32u)), vec4<bool>(!any(vec4<bool>(true, true, var_1.x, false)), false || var_1.x, true, false), Struct_1(_wgslsmith_div_u32(22836u ^ u_input.a.x, 1u), select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_1.x, false, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_1, arg_2)), arg_1, _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), -8955i)), -752f), Struct_1(~(~1u), vec4<bool>(true, var_1.x, true, var_1.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 360f, -440f), vec3<f32>(-172f, arg_2, arg_2), var_1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(1195f, arg_2, arg_2), vec3<f32>(arg_1, 1151f, arg_2))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1223f, -137f, -225f), vec3<f32>(304f, -497f, -416f)))))), arg_1, ~arg_0.x));
    var var_3 = ~(~u_input.a);
    return ~(~var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f - -221f)))));
    var var_1 = Struct_2(Struct_1(4294967295u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, var_0.a <= 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, -145f, var_0.a) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, var_0.a, var_0.a)))), var_0.a, i32(-1i) * -53181i), func_4(vec4<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-31965i, -24706i, -42859i), vec3<i32>(-2147483647i, 2147483647i, -12795i))), 7132i, ~(-2147483647i), func_1(true, vec4<bool>(true, true, false, false), Struct_4(494f, Struct_3(vec3<i32>(34553i, 1i, -19418i), vec4<bool>(false, false, false, true), Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), vec3<f32>(966f, var_0.a, var_0.a), 539f, -26302i), -1000f), Struct_1(44331u, vec4<bool>(false, false, true, true), vec3<f32>(var_0.a, var_0.a, var_0.a), var_0.a, 1i)), vec3<i32>(1i, 0i, 19631i))), -1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-119f * -1580f) * _wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a))), Struct_1(_wgslsmith_mult_u32(13802u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(33146u, u_input.a.x, 19272u)), min(u_input.a.wwy, u_input.a.yyx))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(false, false, false), any(vec3<bool>(false, false, false)), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(875f, var_0.a, var_0.a), vec3<f32>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, true, true))))), vec3<bool>(true, func_3(Struct_1(u_input.a.x, vec4<bool>(true, false, true, true), vec3<f32>(501f, var_0.a, var_0.a), var_0.a, 1i), false, Struct_2(Struct_1(u_input.a.x, vec4<bool>(false, false, true, false), vec3<f32>(161f, 815f, -1267f), 252f, -34335i), u_input.a.x, Struct_1(0u, vec4<bool>(false, true, false, false), vec3<f32>(var_0.a, var_0.a, 1300f), var_0.a, 37121i)), vec4<i32>(0i, 0i, -14692i, -18310i)).x, true))), var_0.a, firstTrailingBit(-1i)));
    var_1 = Struct_2(Struct_1(1u, vec4<bool>(false, 5186u < (var_1.b << (88613u % 32u)), var_1.c.d <= var_0.a, var_1.c.b.x), vec3<f32>(var_0.a, 1f, 1f), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_1.c.d, var_1.a.c.x))))), -463i), 131327u, Struct_1(54604u, var_1.c.b, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-848f, -1294f, -1119f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_1.a.c.x, 1757f) * vec3<f32>(515f, var_1.c.d, var_0.a))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(var_0.a))))), -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(23483i, 1i), vec2<i32>(20549i, -36476i)), abs(vec2<i32>(2147483647i, var_1.c.e)))));
    var var_2 = Struct_3(vec3<i32>(reverseBits(var_1.a.e), 0i, -reverseBits(-1i)), !var_1.a.b, Struct_1(122825u, select(vec4<bool>(true, false, u_input.a.x >= u_input.a.x, var_1.a.b.x & false), !vec4<bool>(var_1.c.b.x, false, false, false), vec4<bool>(var_1.a.b.x, false, 1u < var_1.c.a, any(var_1.c.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, var_0.a, 550f))) - var_1.c.c), 1838f, -(i32(-1i) * -49327i)), _wgslsmith_f_op_f32(abs(403f)));
    var var_3 = countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(i32(-1i) * -1558i, 7838i, var_1.a.e), vec3<i32>(var_1.a.e & -4655i, min(var_2.c.e, 0i), -1i) ^ vec3<i32>(_wgslsmith_add_i32(var_2.a.x, var_1.a.e), var_2.a.x, var_1.c.e)));
    let var_4 = -14543i;
    let var_5 = Struct_3(var_2.a, var_1.a.b, Struct_1(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), u_input.a.x & 4294967295u), !select(!vec4<bool>(var_1.a.b.x, var_2.c.b.x, var_1.a.b.x, false), vec4<bool>(var_1.c.b.x, false, false, var_2.c.b.x), vec4<bool>(true, var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.a.c, var_1.c.c), vec3<f32>(var_1.c.d, var_2.c.d, 1534f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d) + _wgslsmith_f_op_f32(-var_1.c.d)) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-var_1.a.e, 0i), var_2.c.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(507f)) * _wgslsmith_div_f32(-628f, var_1.a.d)) - 389f)));
    let var_6 = Struct_3(var_5.a, vec4<bool>(true & any(!var_2.c.b.xy), var_5.c.b.x, true && var_1.a.b.x, var_5.c.b.x), Struct_1(~(~4294967295u) >> (_wgslsmith_mult_u32(var_1.c.a, var_2.c.a << (var_2.c.a % 32u)) % 32u), var_1.c.b, vec3<f32>(var_5.c.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_5.d), _wgslsmith_f_op_f32(floor(916f)))), var_2.d), -1089f, _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(var_5.c.e), var_4 & var_3.x), var_5.a.xx)), _wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1539f) + var_0.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(-select(vec4<i32>(firstLeadingBit(15218i), min(-9860i, -2147483647i), 1i, ~137992i), -(~vec4<i32>(var_1.a.e, var_1.a.e, var_3.x, -18067i)), all(select(vec4<bool>(var_5.b.x, true, false, false), vec4<bool>(false, var_5.c.b.x, var_2.b.x, var_2.b.x), var_6.b.x))), var_1.a.c, _wgslsmith_mult_i32(var_4, var_3.x), select(_wgslsmith_add_vec3_i32(-var_5.a, -vec3<i32>(10520i, var_2.c.e, -37029i)) & abs(vec3<i32>(-5985i, var_3.x, -2147483647i)), var_5.a, !func_3(Struct_1(var_5.c.a, var_2.c.b, var_5.c.c, var_2.c.c.x, var_6.a.x), true, Struct_2(Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec3<f32>(1087f, -666f, -1040f), 683f, 0i), u_input.a.x, Struct_1(89692u, var_1.a.b, var_2.c.c, -1279f, 1006i)), vec4<i32>(1i, -2147483647i, 18622i, var_4) ^ vec4<i32>(2147483647i, -1153i, var_3.x, var_2.a.x))), _wgslsmith_f_op_f32(sign(var_5.d)));
}

