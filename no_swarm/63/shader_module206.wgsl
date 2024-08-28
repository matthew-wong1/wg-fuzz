struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    var var_0 = any(vec4<bool>(true, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), !any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, all(vec3<bool>(true, true, false)), true))));
    return abs(_wgslsmith_mult_u32(~arg_1.x, arg_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32) -> vec2<f32> {
    let var_0 = abs(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_2, 59726u, 4294967295u), vec3<u32>(1u, 60476u, arg_2)), ~vec3<u32>(arg_2, 4294967295u, arg_2)), 1u), _wgslsmith_div_u32(arg_2, arg_2), reverseBits(~func_3(1i, vec4<u32>(27512u, arg_2, arg_2, 1u))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 78075u), vec2<u32>(10645u, 1u)), vec2<u32>(arg_2, 1u) & vec2<u32>(arg_2, arg_2))));
    let var_1 = 44171u;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1779f, 1000f, -424f) - vec3<f32>(2191f, 2267f, 709f)), _wgslsmith_div_vec3_f32(vec3<f32>(-888f, 1269f, -360f), vec3<f32>(1442f, 266f, 1787f)), arg_1.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -472f, 563f, -677f), vec4<f32>(-957f, var_2.x, var_2.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_2.x, -530f))), select(vec4<bool>(false, arg_1.x, arg_1.x, true), select(arg_1, vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, false))))))));
    var var_4 = arg_0;
    return vec2<f32>(-1694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -588f), -1098f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), var_2.x))))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    return Struct_2(Struct_1(-(vec3<i32>(-1i) * -vec3<i32>(u_input.a, u_input.a, u_input.a)), u_input.a << (min(abs(1u), 0u) % 32u)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec4<i32> {
    return vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(2147483647i, -2871i), max(25748i, ~48461i), 0i), -(~countOneBits(vec3<i32>(32881i, -1i, 75259i)))), select(func_4(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * -237f), 982f), arg_3, _wgslsmith_f_op_f32(-arg_0.x), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), true)).a.b, 0i, true), -14484i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_3.a.a & _wgslsmith_mod_vec3_i32(arg_3.a.a, arg_3.a.a), vec3<i32>(arg_3.a.b & 1i, abs(-37851i), 46204i >> (arg_2 % 32u)), vec3<i32>(2147483647i ^ arg_3.a.b, arg_1.b, ~0i)), ~arg_3.a.a));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = -func_5(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(120f, -296f, 644f, -202f) + vec4<f32>(-193f, 614f, 370f, -641f)), _wgslsmith_div_vec4_f32(vec4<f32>(453f, -1256f, 127f, -646f), vec4<f32>(-794f, 216f, 1000f, 1283f)))))), Struct_1(abs(max(vec3<i32>(1i, arg_0, -39798i), vec3<i32>(arg_0, 27889i, arg_0))), _wgslsmith_mult_i32(arg_0, -1i)), ~min(_wgslsmith_dot_vec4_u32(vec4<u32>(14706u, 11800u, 74091u, 0u), vec4<u32>(45307u, 38251u, 56229u, 1u)), ~0u), func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<i32>(arg_0, arg_0, -12287i), -2147483647i), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), _wgslsmith_mult_u32(0u, 77749u))), Struct_2(Struct_1(vec3<i32>(-15987i, arg_0, u_input.a), arg_0)), -746f, select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), true))));
    let var_1 = Struct_2(Struct_1(var_0.xxx, firstTrailingBit(~u_input.a)));
    var_0 = vec4<i32>(var_1.a.b & ~func_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-903f, 1000f, -365f, -321f), vec4<f32>(917f, 819f, 218f, 718f))), var_1.a, 0u, var_1).x, min(-2147483647i | _wgslsmith_mod_i32(1i, _wgslsmith_mod_i32(var_0.x, var_1.a.a.x)), -_wgslsmith_div_i32(max(-2147483647i, arg_0), -arg_0)), var_1.a.a.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, i32(-1i) * -1i), firstTrailingBit(var_0.yyy) | abs(vec3<i32>(-18827i, var_0.x, var_1.a.b))), var_1.a.a.x);
    var var_2 = var_1.a.a.zx;
    var_2 = var_0.yx;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f + 101f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -236f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(var_1.a, vec4<bool>(true, true, false, false), 103515u)).x * 897f))))));
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> i32 {
    var var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(1000f, arg_0, false)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))), arg_1, -384f, vec4<bool>(true, true, true, true)), _wgslsmith_div_f32(arg_0, arg_0), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, false, false), true, true))).a);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1496f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-346f, -591f)))))), func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-arg_0)), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(158f))))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))).a;
    var var_2 = select(!select(vec3<bool>(2147483647i < var_0.a.b, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(any(vec4<bool>(true, true, false, false)), false, true), vec3<bool>(false, true, any(vec4<bool>(false, true, true, false)))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(arg_1.a.a.x != var_1.b, any(vec2<bool>(true, true)), true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), select(var_1.b, abs(_wgslsmith_sub_i32(var_0.a.a.x, 1i)), true) != func_5(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0)), Struct_1(var_1.a, min(-2147483647i, arg_1.a.a.x)), _wgslsmith_clamp_u32(~1u, 91515u, ~44601u), func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1531f)), arg_1, _wgslsmith_f_op_f32(arg_0 * arg_0), vec4<bool>(true, false, true, false))).x);
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))), Struct_2(arg_1.a), 381f, select(!vec4<bool>(var_2.x, var_2.x, var_2.x, true), !vec4<bool>(!var_2.x, false, true, any(vec4<bool>(var_2.x, true, true, var_2.x))), vec4<bool>(false, var_2.x, (16692i & var_0.a.a.x) >= abs(-44591i), true))).a;
    var var_4 = ~(abs(~vec3<u32>(1u, 0u, 2147u)) ^ min(vec3<u32>(~0u, select(80149u, 4294967295u, var_2.x), ~1u), vec3<u32>(~35787u, ~23891u, 11018u)));
    return func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, -182f, arg_0, arg_0), vec4<f32>(arg_0, arg_0, arg_0, 305f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0) + vec4<f32>(arg_0, arg_0, 3518f, 103f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0, 614f, arg_0, -1614f), vec4<f32>(arg_0, arg_0, arg_0, -1000f))))))), func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) - vec2<f32>(arg_0, 1071f)) - vec2<f32>(-710f, -1067f))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, -284f)))), func_4(vec2<f32>(arg_0, 1391f), arg_1, 2171f, vec4<bool>(false, var_2.x, var_2.x, var_2.x)), 798f, !select(vec4<bool>(var_2.x, true, true, var_2.x), vec4<bool>(false, false, false, true), true)), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(836f + arg_0))), any(vec2<bool>(var_2.x, var_2.x)))), select(select(vec4<bool>(false, false, false, var_2.x), !vec4<bool>(false, false, var_2.x, true), true & var_2.x), vec4<bool>(30811u >= var_4.x, !var_2.x, var_2.x, var_2.x), select(select(vec4<bool>(var_2.x, false, var_2.x, true), vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, false)), vec4<bool>(true, false, true, var_2.x), any(vec2<bool>(var_2.x, var_2.x))))).a, 15240u, Struct_2(arg_1.a)).x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_mult_i32(0i, i32(-1i) * -u_input.a)), vec2<i32>(func_6(_wgslsmith_f_op_f32(-1039f * _wgslsmith_f_op_f32(func_1(u_input.a))), Struct_2(Struct_1(vec3<i32>(-73801i, u_input.a, u_input.a), u_input.a))), u_input.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, -327f, -220f, _wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<i32>(312i, u_input.a, var_0.x), 0i), vec4<bool>(false, true, false, false), 55384u)).x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, 465f, 216f, 358f) + vec4<f32>(1067f, -137f, -1303f, 506f)) * vec4<f32>(-1000f, -211f, 1205f, 1820f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(-761f)), _wgslsmith_f_op_f32(max(269f, _wgslsmith_f_op_f32(floor(var_1.x)))), -186f, _wgslsmith_f_op_f32(1386f - _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2100f, var_1.x, 1469f, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), vec4<f32>(var_1.x, var_1.x, var_1.x, 2260f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -434f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -736f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - -835f), 1070f)), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(step(1539f, -1503f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1030f, 546f, -293f, var_1.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-582f, -126f, 836f, var_1.x) * vec4<f32>(var_1.x, var_1.x, -1175f, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-391f, -286f, var_1.x, -1263f))))));
    var var_2 = ~countOneBits(vec4<u32>(~1u, func_3(select(var_0.x, var_0.x, true), vec4<u32>(1u, 1u, 1u, 1u)), 5703u, max(~10006u, 30662u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-153f, var_1.x, var_1.x, 1000f) - vec4<f32>(-1570f, -826f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, 639f, -399f))))), vec4<f32>(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), var_1.x, var_1.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 716f, 1257f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, var_1.x, 2050f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-708f, var_1.x, -1000f, var_1.x)))))));
    let var_4 = -1349f;
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1924f, -473f, var_3.x, var_1.x) + vec4<f32>(var_1.x, 1162f, 764f, -118f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, -322f, var_4, -1000f))), true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(var_4, 457f)), 1000f, _wgslsmith_f_op_f32(max(-1472f, 293f)), 1f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, 287f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-814f, var_3.x, 556f, var_4) - vec4<f32>(var_3.x, var_1.x, var_3.x, var_4)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1200f, var_1.x, -431f, var_4)) - vec4<f32>(1607f, var_1.x, 353f, -202f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1269f, 1000f, -1075f, -1091f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1333f, -1091f, _wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-13056i, -var_0.x), ~abs(var_0.x)), func_4(var_3.yx, Struct_2(Struct_1(vec3<i32>(u_input.a, 28524i, -70908i), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2118f) * _wgslsmith_f_op_f32(f32(-1f) * -310f)), vec4<bool>(true, true, true, true)).a.a.xy), -var_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, 2628f, var_4, 475f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-359f, var_3.x, var_3.x, var_4))))))));
}

