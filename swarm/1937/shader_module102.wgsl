struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-745f)) + -1660f);
    var var_1 = abs(~arg_0);
    var var_2 = ~(~(~select(vec3<u32>(1u, 13753u, arg_1.a.a), ~vec3<u32>(14872u, 4294967295u, arg_1.a.a), vec3<bool>(true, false, true))));
    let var_3 = _wgslsmith_clamp_i32(-4708i, _wgslsmith_div_i32(~(-85971i), u_input.a) & abs(1i), ~(-(-u_input.a >> (min(52153u, u_input.c) % 32u))));
    var var_4 = -12409i << (~arg_1.a.a % 32u);
    return _wgslsmith_f_op_vec3_f32(max(arg_1.a.c.b, vec3<f32>(_wgslsmith_f_op_f32(min(arg_1.a.b, arg_1.a.c.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.b + 442f) * -1338f)), -761f)));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(-1169f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(f32(-1f) * -1123f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(min(-329f, _wgslsmith_f_op_f32(f32(-1f) * -209f))), true))));
    var var_1 = -_wgslsmith_sub_i32(0i, 44271i);
    let var_2 = Struct_4(var_0, Struct_3(Struct_2(38165u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0))), _wgslsmith_f_op_vec3_f32(func_3(u_input.d.x, Struct_3(Struct_2(u_input.c, 1000f, Struct_1(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, 252f, var_0), var_0, -1i)), vec4<i32>(14997i, u_input.d.x, 60172i, 1i)))), _wgslsmith_f_op_f32(-633f + 773f), -1i)), firstLeadingBit(firstLeadingBit(min(vec4<i32>(35377i, 0i, 22211i, 21594i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))))), Struct_2(4294967295u, _wgslsmith_f_op_f32(floor(var_0)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, var_0, -365f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 884f) + vec3<f32>(-831f, var_0, 1094f)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -1000f, var_0) - vec3<f32>(-936f, -341f, 324f)))), _wgslsmith_f_op_f32(1000f * var_0), select(1i, u_input.b.x, true))));
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(-15193i, -_wgslsmith_div_i32(u_input.b.x, firstLeadingBit(var_2.c.c.d))), i32(-1i) * -1i);
    var var_4 = all(vec3<bool>(false, false, any(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false))))));
    return var_2.b.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().c - _wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1489f, _wgslsmith_f_op_f32(arg_1.x - arg_1.x), false)))))), Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.e), min(vec3<u32>(u_input.c, 1u, 1u), vec3<u32>(u_input.c, u_input.e, u_input.c))), _wgslsmith_f_op_f32(f32(-1f) * -423f), func_2()), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.b.x << (u_input.c % 32u), ~3200i), vec4<i32>(-arg_0.d, _wgslsmith_clamp_i32(u_input.d.x, 3998i, -1i), 2147483647i >> (0u % 32u), arg_0.d >> (u_input.c % 32u)))), Struct_2(~u_input.e, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -753f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 1000f, arg_2) * arg_0.b)), arg_1.ywz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1224f, arg_0.c) - _wgslsmith_f_op_f32(-arg_0.c)), u_input.d.x)));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2267f + 628f)) - _wgslsmith_f_op_f32(-2203f + _wgslsmith_f_op_f32(step(-1676f, 1984f)))), arg_0.b.x), 537f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_0.a.x) - -628f) - -241f), _wgslsmith_f_op_f32(f32(-1f) * -2265f)), var_0.a);
    var_0 = Struct_4(arg_0.c, Struct_3(Struct_2(0u, _wgslsmith_f_op_f32(var_0.c.c.c * arg_2), func_2()), -vec4<i32>(43719i, ~(-2695i), reverseBits(arg_0.d), countOneBits(0i))), Struct_2(max(select(abs(var_0.c.a), var_0.b.a.a, var_1.x > arg_0.c), 1u), var_0.c.c.b.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -2070f, arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(25594i, var_0.b)) * vec3<f32>(-527f, arg_1.x, 1000f)), -1643f, reverseBits(_wgslsmith_clamp_i32(arg_0.d, -2734i, -1i)))));
    let var_2 = 67807i;
    let var_3 = Struct_5(true, 16765u, _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(~1u), 1u, 0u, abs(_wgslsmith_div_u32(0u, 86501u))), ~vec4<u32>(970u, 38356u, u_input.e, 1u)));
    return Struct_2(~0u | var_3.b, _wgslsmith_f_op_f32(1f * var_0.c.b), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1592f, _wgslsmith_div_f32(1301f, arg_2), _wgslsmith_div_f32(arg_2, arg_1.x)), vec3<f32>(_wgslsmith_f_op_f32(-339f + arg_2), arg_1.x, _wgslsmith_div_f32(arg_2, 936f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.zwy + vec3<f32>(1026f, 457f, arg_0.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(arg_2 * 1549f))), countOneBits((arg_0.d ^ 0i) & _wgslsmith_mult_i32(-54166i, arg_0.d))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(~u_input.a, ~1i);
    let var_1 = Struct_3(func_4(func_2(), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-828f, 1000f, arg_0, 568f)))), arg_0), -(~_wgslsmith_add_vec4_i32(-vec4<i32>(6815i, u_input.b.x, u_input.d.x, u_input.b.x), countOneBits(vec4<i32>(u_input.b.x, 0i, u_input.d.x, -29560i)))));
    let var_2 = !arg_1;
    var var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)), Struct_3(func_4(Struct_1(vec3<f32>(-544f, 843f, 256f), vec3<f32>(var_1.a.b, arg_0, -962f), arg_0, ~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -904f, -397f, var_1.a.b)) * vec4<f32>(-510f, 1741f, arg_0, 1180f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), ~countOneBits(var_1.b) | vec4<i32>(u_input.d.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, -42097i, var_1.b.x), var_1.b.yyx), max(u_input.b.x, -2147483647i))), func_4(func_4(var_1.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(350f, arg_0, var_1.a.c.a.x, 261f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b, 379f, 1128f, -994f) - vec4<f32>(506f, var_1.a.b, arg_0, arg_0))), _wgslsmith_div_f32(662f, _wgslsmith_f_op_f32(f32(-1f) * -2047f))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1245f, var_1.a.c.a.x, -1000f, -842f))))), _wgslsmith_f_op_f32(-var_1.a.c.b.x)));
    var_0 = reverseBits(var_1.a.c.d);
    return var_3.b;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: vec2<f32>, arg_3: Struct_5) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(abs(~(-13990i)), -2147483647i), u_input.d.x, min(2147483647i, _wgslsmith_mult_i32(-u_input.a, arg_0.a.c.d)), _wgslsmith_add_i32(select(2147483647i, -2147483647i, arg_0.a.c.c == arg_0.a.b), -2147483647i)) >> (arg_3.c % vec4<u32>(32u));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.b, abs(arg_0.a.a)), ~22721u) >> (_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(reverseBits(arg_1.c), vec4<u32>(arg_1.c.x, 1u, arg_0.a.a, u_input.c)), arg_3.c) % 32u);
    var var_2 = 1i;
    let var_3 = vec2<bool>(all(!select(vec2<bool>(true, arg_3.a), select(vec2<bool>(false, arg_1.a), vec2<bool>(arg_1.a, arg_3.a), vec2<bool>(arg_1.a, false)), select(false, false, arg_3.a))), true);
    var var_4 = _wgslsmith_mult_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 89234u), arg_1.c.yz), ~1u, arg_0.a.a), vec3<u32>(~var_1, var_1, 0u)), countOneBits(reverseBits(abs(max(vec3<u32>(arg_1.b, 95940u, 10335u), vec3<u32>(arg_3.b, 20649u, arg_0.a.a))))));
    return !var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~firstLeadingBit(~u_input.e));
    var_0 = abs(~firstTrailingBit(u_input.e));
    var var_1 = vec3<bool>(!all(vec2<bool>(true, true)), u_input.e >= firstLeadingBit(u_input.c & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 11872u, u_input.e, u_input.e), vec4<u32>(1u, u_input.e, 0u, u_input.c))), any(func_5(func_1(-654f, vec2<bool>(true, true)), Struct_5(false, u_input.e, vec4<u32>(25272u, 1u, 35088u, u_input.c)), vec2<f32>(-666f, 393f), Struct_5(false, 4294967295u, vec4<u32>(u_input.c, 30462u, 4294967295u, 51568u)))) || (true || all(vec3<bool>(true, false, false))));
    var_1 = select(select(vec3<bool>(true, any(select(vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), true)), _wgslsmith_f_op_f32(f32(-1f) * -907f) >= _wgslsmith_f_op_f32(round(1000f))), select(vec3<bool>(true, any(vec3<bool>(true, false, var_1.x)), var_1.x), !vec3<bool>(true, var_1.x, var_1.x), !(!vec3<bool>(var_1.x, true, var_1.x))), !(!(!vec3<bool>(true, false, var_1.x)))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(false, true, false)), vec3<bool>(-2147483647i == u_input.b.x, any(vec2<bool>(var_1.x, var_1.x)), true), select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x), false)), vec3<bool>(var_1.x || var_1.x, false, var_1.x), any(var_1.xz)), select(vec3<bool>(true, func_5(Struct_3(Struct_2(1u, -839f, Struct_1(vec3<f32>(-1596f, 1000f, -453f), vec3<f32>(-876f, -808f, -1000f), 162f, 30227i)), vec4<i32>(-1i, 11205i, u_input.a, -1i)), Struct_5(var_1.x, u_input.c, vec4<u32>(27938u, u_input.c, u_input.c, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-846f, -271f) * vec2<f32>(1101f, 1727f)), Struct_5(var_1.x, 10005u, vec4<u32>(u_input.c, 39699u, u_input.c, u_input.e))).x, true), select(!vec3<bool>(true, var_1.x, var_1.x), !(!vec3<bool>(var_1.x, true, var_1.x)), var_1.x), all(select(vec3<bool>(true, false, true), select(vec3<bool>(var_1.x, true, false), vec3<bool>(true, true, var_1.x), var_1.x), true))));
    var var_2 = func_1(_wgslsmith_div_f32(func_4(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1032f, 737f, -1988f), vec3<f32>(1000f, 827f, -230f)), vec3<f32>(1f, 1f, 1f), 1874f, -u_input.a), vec4<f32>(-1066f, 1463f, 155f, 399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(477f - -778f))).b, _wgslsmith_f_op_f32(-886f + _wgslsmith_f_op_f32(-215f + _wgslsmith_f_op_f32(floor(193f))))), func_5(Struct_3(Struct_2(u_input.c, -1237f, Struct_1(vec3<f32>(548f, 173f, 490f), vec3<f32>(146f, 1124f, -910f), 1202f, 1i)), vec4<i32>(u_input.b.x, u_input.b.x, firstLeadingBit(-27085i), -u_input.b.x)), Struct_5(true, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(4294967295u, u_input.c)) >> (~u_input.c % 32u), ~(vec4<u32>(u_input.e, 1u, u_input.e, 0u) | vec4<u32>(u_input.c, u_input.e, u_input.c, u_input.e))), vec2<f32>(1237f, _wgslsmith_f_op_f32(max(-986f, _wgslsmith_f_op_f32(trunc(-1000f))))), Struct_5(!(20510i > u_input.b.x), ~u_input.e, vec4<u32>(~u_input.e, func_1(-1349f, var_1.yx).a.a, 10525u, abs(u_input.c))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.e)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_2.a), vec2<u32>(48425u, 42316u)))), reverseBits(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-28412i, 36248i, u_input.b.x, u_input.a), vec4<i32>(var_2.c.d, var_2.c.d, var_2.c.d, var_2.c.d), vec4<i32>(u_input.d.x, var_2.c.d, -2147483647i, var_2.c.d))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1918f * var_2.b))), var_2.c.a.x))), -1045f, _wgslsmith_f_op_vec3_f32(-var_2.c.a));
}

