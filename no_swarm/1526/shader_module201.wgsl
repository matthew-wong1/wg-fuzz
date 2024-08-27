struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = arg_0;
    let var_1 = false;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(reverseBits(arg_0.b) & vec3<i32>(arg_0.a.x, u_input.a, -3114i), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, u_input.b.x)), firstLeadingBit(abs(u_input.b.x))), vec3<i32>(~countOneBits(arg_0.a.x), _wgslsmith_div_i32(-firstLeadingBit(arg_0.a.x), arg_0.a.x), min(var_0.a.x | arg_0.b.x, countOneBits(1i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, var_0.d.x, 552f, 1310f))), _wgslsmith_f_op_vec4_f32(-arg_0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(-var_0.c.x), 1417f, -303f)))), vec4<f32>(-113f, -442f, _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.d.x, var_1)), var_0.c.x), !any(!(!vec4<bool>(arg_2.x, var_1, arg_0.e, arg_2.x))));
    var var_3 = reverseBits(arg_1.xyz);
    let var_4 = Struct_2(var_2, true & any(vec2<bool>(true, true)), var_0, arg_1.xzz);
    return 1u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(422f)))))) - arg_0.c.d.x);
    let var_1 = (11368u != _wgslsmith_div_u32(func_3(Struct_1(vec2<i32>(21678i, u_input.a), vec3<i32>(arg_0.a.a.x, 23330i, u_input.a), arg_0.a.d, arg_0.a.c, arg_1.x), ~vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 6961u), select(arg_1.yyx, vec3<bool>(arg_0.b, arg_0.a.e, arg_1.x), vec3<bool>(arg_1.x, true, arg_0.a.e))), 1u)) || false;
    let var_2 = _wgslsmith_f_op_f32(exp2(arg_0.a.d.x));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.a.b.xy, u_input.b.yx ^ u_input.b.xw), vec2<i32>(_wgslsmith_div_i32(42310i, 1i), abs(arg_0.a.a.x))), vec3<i32>(-20106i, (arg_0.a.a.x << (4294967295u % 32u)) & 1i, -_wgslsmith_sub_i32(-15581i, u_input.b.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1923f, var_2, var_2, arg_0.a.d.x)), arg_0.a.d, false)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a.d))))), arg_0.a.d, true || var_1), var_2 != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -625f), 1761f), Struct_1(~vec2<i32>(1i, arg_0.c.b.x), ~arg_0.c.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.d.x, var_0, var_0, 652f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, -1000f, arg_0.a.d.x, var_2)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(arg_0.c.d)))) * vec4<f32>(-342f, -889f, _wgslsmith_f_op_f32(select(var_2, arg_0.c.d.x, false)), _wgslsmith_div_f32(var_0, 995f))), !(var_2 > _wgslsmith_f_op_f32(select(-920f, 1000f, arg_0.c.e)))), ~(~(vec3<u32>(1u, arg_0.d.x, 34820u) & firstLeadingBit(vec3<u32>(63488u, arg_0.d.x, 7993u)))));
    var var_4 = var_3.c;
    return arg_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = arg_0.yyy;
    var var_1 = func_2(func_2(arg_1, vec4<bool>(true, func_2(func_2(Struct_2(arg_1.c, arg_0.x, Struct_1(vec2<i32>(-3183i, -2147483647i), u_input.b.wyz, vec4<f32>(951f, -753f, 761f, arg_1.a.d.x), vec4<f32>(arg_1.c.d.x, 266f, arg_1.c.d.x, arg_1.c.c.x), arg_1.a.e), arg_1.d), arg_0), arg_0).a.e, true, var_0.x)), arg_0).c.e;
    var_1 = var_0.x;
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-61094i, u_input.b.x, _wgslsmith_div_i32(28324i | abs(arg_1.a.a.x), arg_1.c.b.x), 0i), reverseBits(u_input.b));
    return 0i;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<f32> {
    let var_0 = func_2(func_2(Struct_2(Struct_1(arg_1.a, vec3<i32>(0i, arg_1.a.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c.x, -1043f, arg_1.c.x, 359f) + vec4<f32>(-783f, arg_2.x, arg_2.x, arg_1.d.x)), _wgslsmith_f_op_vec4_f32(arg_1.c - arg_1.c), arg_1.e), true, arg_1, vec3<u32>(1u, 1u, 1u)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_1.e, arg_1.e, arg_1.e, arg_1.e), vec4<bool>(true, true, arg_1.e, false)), !vec4<bool>(false, false, arg_1.e, arg_1.e), select(vec4<bool>(true, true, arg_1.e, arg_1.e), vec4<bool>(arg_1.e, arg_1.e, false, arg_1.e), vec4<bool>(false, arg_1.e, arg_1.e, false)))), vec4<bool>(false, arg_1.e, all(select(!vec4<bool>(true, false, arg_1.e, false), !vec4<bool>(false, arg_1.e, arg_1.e, true), !vec4<bool>(arg_1.e, true, true, false))), arg_1.e));
    return _wgslsmith_f_op_vec3_f32(max(arg_2, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.c.c.xwx)))));
}

fn func_6(arg_0: vec3<f32>) -> f32 {
    let var_0 = ~0u;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1333f))), 769f, _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_add_i32(u_input.a, u_input.b.x), Struct_1(u_input.b.xz, vec3<i32>(u_input.b.x, -2433i, u_input.a), vec4<f32>(arg_0.x, -201f, arg_0.x, -248f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true), _wgslsmith_f_op_vec3_f32(arg_0 * arg_0))).x, !all(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(sign(arg_0.x)))));
    var var_2 = u_input.b.x;
    var_2 = ~(-((u_input.b.x & max(2147483647i, -14655i)) >> (func_2(Struct_2(Struct_1(vec2<i32>(u_input.a, u_input.b.x), vec3<i32>(0i, u_input.b.x, -49172i), vec4<f32>(230f, var_1.x, arg_0.x, 739f), var_1, false), false, Struct_1(vec2<i32>(u_input.b.x, -1i), u_input.b.ywz, var_1, vec4<f32>(arg_0.x, var_1.x, arg_0.x, var_1.x), true), vec3<u32>(18971u, var_0, 0u)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))).d.x % 32u)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(119f)), -353f))) * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1071f + var_1.x)) * _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f * -1024f)), -1124f))));
    return arg_0.x;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(func_4(vec4<bool>(false, true, true, true), func_2(Struct_2(Struct_1(u_input.b.ww, u_input.b.yyy, vec4<f32>(-337f, -639f, 1343f, 1758f), vec4<f32>(590f, 437f, 588f, 334f), false), true, Struct_1(u_input.b.wy, u_input.b.yxz, vec4<f32>(1400f, 1568f, 1209f, -1258f), vec4<f32>(-134f, 928f, -1191f, 1000f), false), vec3<u32>(27009u, 22693u, 39378u)), vec4<bool>(true, true, true, false))), Struct_1(~u_input.b.yy, u_input.b.wxy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-575f, -467f, 1581f, 2234f)), _wgslsmith_div_vec4_f32(vec4<f32>(885f, 130f, -996f, 1000f), vec4<f32>(-2557f, -213f, 853f, 1758f)), true), func_2(Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.a), u_input.b.zwz, vec4<f32>(1900f, 483f, -1000f, 137f), vec4<f32>(185f, -826f, 908f, 948f), true), true, Struct_1(u_input.b.zy, u_input.b.wxy, vec4<f32>(-210f, -1811f, -279f, 354f), vec4<f32>(-1010f, -381f, -857f, 1411f), false), vec3<u32>(57336u, 30723u, 4294967295u)), vec4<bool>(false, true, true, false)).c.d.xwz)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, _wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(f32(-1f) * -1021f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-561f, -442f, 928f) - vec3<f32>(-911f, 2457f, 2814f)))))));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f))), func_2(func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.b.yy, u_input.b.xxy, vec4<f32>(1020f, -945f, 1228f, -211f), vec4<f32>(-2090f, -1000f, -648f, 457f), true), true, Struct_1(vec2<i32>(-6419i, u_input.b.x), vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec4<f32>(339f, 606f, 525f, 1081f), vec4<f32>(208f, -1374f, -983f, 1000f), true), vec3<u32>(41958u, 0u, 47111u)), vec4<bool>(true, false, true, false)).a, true, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec3<i32>(0i, -2147483647i, -1i), vec4<f32>(260f, -139f, 507f, 1000f), vec4<f32>(-206f, -792f, -830f, -1000f), false), countOneBits(vec3<u32>(0u, 12866u, 4294967295u))), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(func_2(Struct_2(Struct_1(u_input.b.zy, u_input.b.zwx, vec4<f32>(-458f, 312f, 2762f, -147f), vec4<f32>(285f, 452f, 192f, 1990f), false), false, Struct_1(u_input.b.yw, u_input.b.wzy, vec4<f32>(-1448f, -911f, -1000f, 521f), vec4<f32>(2242f, -569f, -1045f, -1000f), true), vec3<u32>(40955u, 39219u, 11936u)), vec4<bool>(true, false, false, true)).a.e, true, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true)))).c.d.x));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -802f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-838f)) + _wgslsmith_f_op_f32(-1243f - -266f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -644f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2022f - -1298f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1454f - _wgslsmith_f_op_f32(f32(-1f) * -785f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -735f)))) + 1125f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1486f))));
    return ~_wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(74576u, 1u)), select(vec2<u32>(4294967295u, 0u), vec2<u32>(56316u, 11728u), true)), vec2<u32>(43039u, firstLeadingBit(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yzz, vec4<f32>(1404f, 1417f, -635f, 971f), vec4<f32>(585f, -1069f, -1000f, -395f), true), true, Struct_1(vec2<i32>(u_input.b.x, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a), vec4<f32>(-507f, -1058f, -1559f, 1508f), vec4<f32>(437f, 1142f, -1537f, -577f), false), vec3<u32>(1u, 24775u, 0u)), vec4<bool>(true, false, true, false)).d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(44564u, 11088u) ^ func_1();
    var_0 = vec2<u32>(countOneBits(var_0.x), (min(~4294967295u, firstLeadingBit(var_0.x)) & firstTrailingBit(_wgslsmith_sub_u32(var_0.x, var_0.x))) << (max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_0.x, 0u, 1u), _wgslsmith_add_u32(34680u, 22682u)), 4294967295u) % 32u));
    let var_1 = any(select(vec4<bool>(true, _wgslsmith_f_op_f32(step(208f, -538f)) != _wgslsmith_f_op_f32(-761f + 1072f), true & func_2(Struct_2(Struct_1(u_input.b.yx, u_input.b.zzz, vec4<f32>(193f, 1075f, 581f, 243f), vec4<f32>(166f, 598f, -1536f, -1247f), false), true, Struct_1(vec2<i32>(-35633i, u_input.a), u_input.b.yzw, vec4<f32>(-1118f, 1566f, -907f, -1000f), vec4<f32>(-653f, -1712f, -977f, -265f), true), vec3<u32>(var_0.x, var_0.x, var_0.x)), vec4<bool>(false, false, true, true)).b, false), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    var_0 = firstLeadingBit(vec2<u32>(74368u, 0u)) >> (vec2<u32>(18881u, 9899u | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(47906u, var_0.x), abs(42577u), 4294967295u << (var_0.x % 32u))) % vec2<u32>(32u));
    var var_2 = -_wgslsmith_dot_vec2_i32(-u_input.b.wx, ~select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), u_input.b.yw), reverseBits(u_input.b.xy), var_1));
    let var_3 = Struct_2(Struct_1(u_input.b.xw, vec3<i32>(func_2(Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.a), vec3<i32>(0i, 1i, 2147483647i), vec4<f32>(-1019f, 1546f, -601f, 1451f), vec4<f32>(454f, 503f, -1220f, 594f), var_1), var_1, Struct_1(vec2<i32>(u_input.a, u_input.a), vec3<i32>(u_input.a, -2147483647i, 6882i), vec4<f32>(-609f, 728f, -1204f, -1264f), vec4<f32>(-514f, 1000f, -857f, -671f), var_1), vec3<u32>(55184u, 4294967295u, 25973u)), select(vec4<bool>(false, var_1, false, true), vec4<bool>(true, false, true, var_1), vec4<bool>(var_1, var_1, var_1, false))).c.b.x, _wgslsmith_mod_i32(u_input.a, u_input.b.x) & -1i, -1i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(-243f, 629f, var_1)), _wgslsmith_f_op_f32(ceil(1000f)), -1641f, 640f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(239f, -276f, -788f, -1883f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-967f, 649f, -1272f, -1503f)))), false), var_0.x <= (~(~7720u) ^ ~_wgslsmith_mod_u32(60260u, var_0.x)), Struct_1(_wgslsmith_mod_vec2_i32(u_input.b.zw, -reverseBits(u_input.b.zy)), ~max(u_input.b.wwz, vec3<i32>(u_input.a, u_input.a, 69153i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(424f, -1000f), 954f, _wgslsmith_f_op_f32(-140f + 924f), _wgslsmith_f_op_f32(func_6(vec3<f32>(-486f, 307f, -1475f))))), true), ~min(_wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(1u, 4294967295u, 1412u)), ~vec3<u32>(1u, 1u, 0u) & _wgslsmith_add_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(78557u, var_0.x, 45618u))));
    let var_4 = vec2<i32>(var_3.a.b.x, 47943i);
    let x = u_input.a;
    s_output = StorageBuffer((((vec4<i32>(15790i, var_3.a.b.x, -1i, -27244i) ^ u_input.b) >> (abs(vec4<u32>(var_3.d.x, 17526u, var_3.d.x, 36691u)) % vec4<u32>(32u))) & u_input.b) | u_input.b, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec3_f32(abs(var_3.a.c.yww)))))), _wgslsmith_f_op_f32(floor(var_3.a.c.x)), var_3.a.d.x), select(~min(vec2<u32>(var_3.d.x, 0u), var_3.d.zz) >> (var_3.d.zx % vec2<u32>(32u)), select(~var_3.d.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.d.x, 1u), vec2<u32>(5614u, var_3.d.x)), select(vec2<bool>(false, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, var_3.b))) >> ((var_3.d.yz >> (~var_3.d.yy % vec2<u32>(32u))) % vec2<u32>(32u)), func_2(func_2(var_3, vec4<bool>(var_3.c.e, var_3.c.e, var_3.b, var_1)), select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(var_1, var_3.b, var_1, true), var_3.b)).a.d.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2080f, var_3.c.c.x)) * 256f)), var_3.a.b);
}

