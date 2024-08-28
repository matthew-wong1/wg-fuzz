struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_1(!(!vec2<bool>(any(vec4<bool>(true, false, true, true)), any(vec4<bool>(false, true, false, true)))), !(any(vec2<bool>(true, true)) & all(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_1(vec2<bool>(any(vec4<bool>(true, any(vec3<bool>(false, true, false)), var_0.a.x, select(var_0.a.x, var_0.a.x, false))), !all(vec4<bool>(var_0.a.x, false, true, false))), all(var_0.a));
    var_0 = Struct_1(!var_1.a, var_1.b);
    let var_2 = select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4229u, u_input.a, u_input.a, 59554u), vec4<u32>(6965u, u_input.a, 34258u, 1u)), ~select(vec4<u32>(61939u, u_input.a, 1u, 20423u), vec4<u32>(91751u, u_input.a, 44059u, 4294967295u), vec4<bool>(var_0.b, true, true, true))) << (vec4<u32>(~u_input.a, ~_wgslsmith_add_u32(u_input.a, u_input.a), u_input.a >> (1u % 32u), u_input.a) % vec4<u32>(32u)), vec4<u32>(1u, ~4294967295u, 0u, u_input.a), select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.a.x, any(vec4<bool>(false, var_0.a.x, true, var_1.b)), var_1.b, any(vec3<bool>(true, true, true))), vec4<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, var_0.a.x, true)), true, any(vec3<bool>(false, false, true)), !(!var_1.b))));
    return !select(!(!vec4<bool>(var_1.b, var_0.a.x, true, false)), vec4<bool>(all(vec4<bool>(var_1.b, false, var_1.a.x, true)), _wgslsmith_div_f32(1000f, arg_0) < _wgslsmith_f_op_f32(arg_0 * -1366f), true, true), var_0.a.x);
}

fn func_2() -> vec3<i32> {
    var var_0 = -5324i;
    let var_1 = any(select(vec4<bool>(false, true, !(u_input.a >= u_input.a), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-831f, 516f))))));
    var var_2 = Struct_1(!(!(!(!vec2<bool>(var_1, var_1)))), ~(~(55061i << (u_input.a % 32u))) <= -(~(i32(-1i) * -2147483647i)));
    var var_3 = Struct_1(vec2<bool>(var_2.a.x, var_2.b), var_2.b);
    let var_4 = select(select(select(vec4<bool>(var_2.a.x, var_3.b == false, var_3.a.x, false), select(func_3(861f), vec4<bool>(false, var_1, var_3.b, true), true), select(vec4<bool>(var_2.a.x, false, true, true), vec4<bool>(var_2.a.x, var_2.a.x, var_1, false), select(vec4<bool>(false, false, true, true), vec4<bool>(var_3.a.x, true, true, var_2.a.x), vec4<bool>(true, false, false, var_2.a.x)))), vec4<bool>(true || !var_3.b, any(!vec2<bool>(false, var_2.b)), false, false), !select(!vec4<bool>(true, var_1, true, false), select(vec4<bool>(var_1, var_2.b, var_1, true), vec4<bool>(true, false, var_3.b, var_2.b), true), select(vec4<bool>(var_2.a.x, false, var_1, true), vec4<bool>(false, var_2.b, false, true), false))), select(select(!vec4<bool>(true, var_3.a.x, false, false), vec4<bool>(!var_3.b, !var_1, var_3.b, var_3.b && false), func_3(613f).x | true), select(vec4<bool>(true, !var_3.b, true, var_1), vec4<bool>(true, func_3(-1090f).x, true, any(vec3<bool>(true, var_2.a.x, var_2.a.x))), !select(vec4<bool>(false, var_2.b, var_1, var_1), vec4<bool>(var_1, false, var_1, var_2.b), var_3.a.x)), !any(select(vec4<bool>(true, var_2.a.x, var_2.a.x, var_3.a.x), vec4<bool>(false, var_3.a.x, false, false), vec4<bool>(true, true, true, true)))), select(select(!(!vec4<bool>(var_2.a.x, false, var_3.b, var_1)), vec4<bool>(var_1 & true, true, !var_1, var_2.a.x & var_1), var_1), select(vec4<bool>(false, true, false, var_1 & true), select(vec4<bool>(var_1, false, true, var_1), vec4<bool>(true, true, true, true), var_3.b), all(var_2.a)), func_3(261f)));
    return vec3<i32>(abs(-2147483647i), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-42495i, 2147483647i, -1i, 2560i)) >> (~u_input.a % 32u)), 14418i);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-(~(i32(-1i) * -16512i)), firstLeadingBit(63368i), ~(-2147483647i)), ~_wgslsmith_mult_vec3_i32(min(func_2(), _wgslsmith_add_vec3_i32(vec3<i32>(-24242i, 2147483647i, -41411i), vec3<i32>(0i, -3044i, -43164i))), abs(vec3<i32>(-14325i, -28409i, -5025i)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(31127u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 40647u)) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-1549f, -190f), -749f, _wgslsmith_f_op_f32(343f - 3347f), _wgslsmith_f_op_f32(trunc(707f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(624f, -1031f, -1489f, 278f)))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1250f, -1586f, -833f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(994f, 885f, -594f, -671f)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(3370f, 1000f, -1281f, -787f))), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, -1190f, 1000f, -272f)), vec4<f32>(_wgslsmith_f_op_f32(max(-2111f, 1000f)), _wgslsmith_div_f32(497f, 476f), -1394f, 1f), select(true, true, any(vec4<bool>(false, false, true, true))))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), true, true, any(vec4<bool>(true, true, true, false))))));
    var_0 = ~(-reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_0.x, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.x, -2147483647i), vec3<i32>(-1i, 20653i, var_0.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2339f)), 772f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -677f)))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -739f)))));
    let var_2 = !select(!func_3(_wgslsmith_f_op_f32(min(var_1.x, -723f))).zxx, vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)), all(vec2<bool>(true, true)), false), reverseBits(u_input.a) <= abs(1u));
    return Struct_1(var_2.xx, true);
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_0.a, arg_0.a.x);
    var var_1 = func_1();
    var_1 = func_1();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1019f)) - _wgslsmith_f_op_f32(-1000f + 167f)), -438f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(684f))), 1140f);
    var var_3 = ~((~max(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(4294967295u, 1u)) >> (max(vec2<u32>(u_input.a, 170065u), abs(vec2<u32>(1u, 8731u))) % vec2<u32>(32u))) >> (~(~firstTrailingBit(vec2<u32>(6941u, u_input.a))) % vec2<u32>(32u)));
    return select(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -53063i), select(func_2().yx & _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 6962i), vec2<i32>(-7341i, 0i)), countOneBits(func_2().zz), any(select(vec3<bool>(var_0.a.x, true, var_0.b), vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.a.x, true, false))))), all(vec4<bool>(var_0.a.x, true, var_1.b, (0i << (var_3.x % 32u)) < countOneBits(1i))));
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>, arg_3: i32) -> vec4<i32> {
    var var_0 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - arg_0.x), _wgslsmith_f_op_f32(trunc(713f)), 635f);
    var var_1 = Struct_1(vec2<bool>(arg_1, true), false);
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(605f, 1000f, var_0.x == arg_0.x))), -1339f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(403f)) + _wgslsmith_f_op_f32(-var_0.x)), -420f)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * 153f)), _wgslsmith_f_op_f32(-441f - arg_0.x)))));
    var_1 = Struct_1(func_1().a, func_1().b);
    let var_2 = func_1();
    return vec4<i32>(firstLeadingBit(1i), arg_3, -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, func_2().x, arg_3, -2147483647i), ~vec4<i32>(18471i, 52222i, arg_3, arg_3)), select(firstLeadingBit(firstLeadingBit(vec4<i32>(-64433i, 40647i, 1950i, arg_3))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, 60845i), vec2<i32>(arg_3, -1i)), arg_3, abs(arg_3), 34910i & arg_3), (1423f <= arg_0.x) | !arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_i32(~1i, -972i) << (countOneBits(u_input.a) % 32u);
    var var_1 = vec4<i32>(var_0, var_0, _wgslsmith_sub_i32(var_0, _wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, -1i), _wgslsmith_div_i32(var_0, 2147483647i))) >> (abs(_wgslsmith_mod_u32(4294967295u, 19130u)) % 32u), _wgslsmith_div_i32(10998i, -33410i));
    let var_2 = Struct_1(vec2<bool>(4294967295u != ~u_input.a, true), !(true & (u_input.a < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var_1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1072f * 668f)) - _wgslsmith_f_op_f32(max(861f, _wgslsmith_f_op_f32(-1427f - -408f)))), -1000f), false, _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(u_input.a, 1u)), vec2<u32>(~1u, u_input.a), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(75769u, u_input.a), vec2<u32>(1u, u_input.a)), ~vec2<u32>(4294967295u, u_input.a))) ^ countOneBits(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 24298u), ~vec2<u32>(u_input.a, 27663u))), func_4(func_1()));
    var var_3 = vec3<u32>(~_wgslsmith_sub_u32(_wgslsmith_div_u32(~7654u, _wgslsmith_mult_u32(u_input.a, 4294967295u)), _wgslsmith_clamp_u32(u_input.a, 1u, _wgslsmith_add_u32(76935u, u_input.a))), abs(_wgslsmith_sub_u32(u_input.a, u_input.a)), 1u);
    var var_4 = func_1();
    var var_5 = _wgslsmith_clamp_i32(var_0, -2147483647i, 3255i << (_wgslsmith_div_u32(var_3.x, abs(92999u) >> (_wgslsmith_div_u32(1u, 14775u) % 32u)) % 32u));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, 1297f, -864f)))))) - vec3<f32>(_wgslsmith_f_op_f32(min(-852f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -379f))))), _wgslsmith_f_op_f32(round(-830f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -471f), -1406f)))));
    let var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, var_6.x, 1463f, 922f) - vec4<f32>(var_6.x, -646f, 1039f, 711f)) + vec4<f32>(var_6.x, -1717f, var_6.x, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(556f, -259f, var_6.x, 1828f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-175f, var_6.x, -1075f, var_6.x), vec4<f32>(285f, var_6.x, 595f, var_6.x))))));
}

