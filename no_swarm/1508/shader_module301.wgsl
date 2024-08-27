struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1148f * -1123f) + -1824f), -991f))) + 1f);
    let var_1 = Struct_1(min(vec4<i32>(89219i, 1i, u_input.a, firstLeadingBit(-47976i)), vec4<i32>(u_input.a, u_input.a, u_input.a << (0u % 32u), 5282i)) >> (vec4<u32>(0u, ~(~60216u), 40743u, _wgslsmith_clamp_u32(~4294967295u, ~1u, reverseBits(0u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(step(-389f, 1000f)), u_input.a, vec2<f32>(var_0, var_0), abs(firstLeadingBit(vec2<i32>(~u_input.a, _wgslsmith_sub_i32(2147483647i, 30543i)))));
    let var_2 = (vec2<u32>(1u, 1u) | (vec2<u32>(~30205u, ~1u) >> (select(_wgslsmith_sub_vec2_u32(vec2<u32>(52436u, 82252u), vec2<u32>(1u, 42132u)), vec2<u32>(1u, 1u), vec2<bool>(arg_0.x, true)) % vec2<u32>(32u)))) >> (select(firstTrailingBit(vec2<u32>(~1u, ~0u)), vec2<u32>(_wgslsmith_add_u32(~0u, min(4294967295u, 0u)), 1u), arg_0.x) % vec2<u32>(32u));
    let var_3 = var_1;
    var var_4 = Struct_2(var_3, var_3, ~_wgslsmith_add_u32(42930u, var_2.x | ~1u));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(57902u, 21872u)), vec2<u32>(4294967295u, ~1u), select(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(4294967295u, 0u), func_3(vec3<bool>(true, false, true))) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (vec2<u32>(~min(0u, _wgslsmith_mod_u32(49640u, 24831u)), 1u) % vec2<u32>(32u));
    var var_2 = ~var_0 & 92841i;
    var var_3 = Struct_2(arg_0, Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(594f, arg_0.b, true)), -46760i, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_1.d.x)), _wgslsmith_f_op_vec2_f32(step(arg_1.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1.d.x)))), ~var_1.x != ~1u)), min(firstLeadingBit(arg_1.e), vec2<i32>(arg_2.x, arg_1.e.x)) & (select(arg_1.e, vec2<i32>(1i, 0i), true) >> (min(vec2<u32>(4294967295u, var_1.x), vec2<u32>(24464u, 0u)) % vec2<u32>(32u)))), (min(_wgslsmith_sub_u32(var_1.x, 1u), var_1.x) << (var_1.x % 32u)) ^ ~(~(~4294967295u)));
    let var_4 = select(vec4<bool>(_wgslsmith_f_op_f32(-arg_1.b) < _wgslsmith_f_op_f32(975f + -1357f), all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !(!any(vec3<bool>(true, true, false))), !all(vec3<bool>(true, true, true))), select(vec4<bool>(func_3(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), !(var_3.b.d.x < arg_1.d.x), select(false, all(vec3<bool>(false, true, false)), var_1.x < var_3.c), true), !vec4<bool>(any(vec2<bool>(false, false)), true, true, any(vec4<bool>(false, false, true, true))), vec4<bool>(_wgslsmith_mult_u32(var_1.x, var_3.c) == var_3.c, true, true, true)), select(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), select(true, true, false))), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), any(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), false), vec4<bool>(select(true, true, true), false, true, all(vec3<bool>(false, true, false)))));
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec4<bool> {
    var var_0 = Struct_2(arg_0.a, func_2(arg_0.b, arg_0.b, arg_0.a.a), arg_0.c);
    var_0 = arg_0;
    var_0 = Struct_2(Struct_1(select(vec4<i32>(-1i) * -vec4<i32>(arg_1, var_0.b.e.x, -23535i, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 28764i, arg_0.a.e.x) << (vec4<u32>(21875u, arg_0.c, arg_0.c, 20294u) % vec4<u32>(32u)), firstTrailingBit(var_0.a.a)), var_0.a.d.x < var_0.b.b), _wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_div_f32(_wgslsmith_div_f32(-1073f, -546f), _wgslsmith_f_op_f32(round(var_0.a.b)))), var_0.b.c, vec2<f32>(-1107f, 580f), firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(2147483647i, 29169i), ~52035i))), var_0.a, 45675u);
    var_0 = Struct_2(arg_0.b, Struct_1(var_0.b.a, func_2(var_0.a, var_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(46419i, -6620i, -35093i, 26555i), _wgslsmith_div_vec4_i32(var_0.b.a, vec4<i32>(arg_0.b.a.x, 2147483647i, 8449i, var_0.a.a.x)), arg_0.b.a)).d.x, u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1102f, 1167f), vec2<f32>(var_0.a.b, var_0.a.b), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(117f, var_0.b.d.x))))), var_0.a.e), arg_0.c | ~(~var_0.c));
    var var_1 = func_2(func_2(Struct_1(select(select(arg_0.b.a, var_0.a.a, false), arg_0.a.a, any(vec2<bool>(true, true))), -426f, i32(-1i) * -2147483647i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.d), _wgslsmith_f_op_vec2_f32(ceil(var_0.a.d))), var_0.a.e), Struct_1(vec4<i32>(min(arg_0.a.c, var_0.a.a.x), _wgslsmith_clamp_i32(u_input.a, 2147483647i, arg_0.a.e.x), 7697i, arg_1), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(227f * var_0.b.b), var_0.b.d.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a.d, vec2<f32>(-573f, var_0.b.d.x))), reverseBits(vec2<i32>(u_input.a, 0i))), var_0.b.a ^ max(var_0.a.a, var_0.b.a ^ vec4<i32>(1i, u_input.a, -1i, -35060i))), var_0.a, ~(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, -6946i, 1i), vec4<i32>(u_input.a, arg_1, 1i, -2147483647i)), vec4<i32>(arg_0.a.a.x, var_0.a.e.x, -4201i, 2147483647i)) << (vec4<u32>(23762u, arg_0.c, 1u, ~4294967295u) % vec4<u32>(32u))));
    return select(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), !(var_1.e.x > var_1.a.x), true, false), vec4<bool>(true, true, true, true), vec4<bool>(select(var_0.b.c == 81125i, true, true), ~arg_0.c < 36078u, true, true)), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), !(var_0.b.d.x >= var_0.a.b)), !(!vec4<bool>(true, true, true, all(vec4<bool>(true, false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max((_wgslsmith_clamp_vec4_i32(vec4<i32>(35675i, -10862i, u_input.a, 0i) & vec4<i32>(-10434i, -35272i, u_input.a, u_input.a), ~vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), abs(vec4<i32>(u_input.a, 2147483647i, u_input.a, 10663i))) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 95179i) << (vec4<u32>(11522u, 21584u, 0u, 1u) % vec4<u32>(32u)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, 1i))) & _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -17521i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -4131i, u_input.a, -11322i), vec4<i32>(269i, 1895i, u_input.a, 0i)), vec4<i32>(-7195i, u_input.a, u_input.a, -23897i) | vec4<i32>(u_input.a, 19799i, u_input.a, u_input.a))), firstLeadingBit(-_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, 10997i), vec4<i32>(u_input.a, u_input.a, 6663i, u_input.a)), vec4<i32>(1i, 1i, 1i, 1i))));
    var var_1 = vec2<bool>(u_input.a < u_input.a, any(select(vec4<bool>(true, any(vec3<bool>(false, false, false)), true, all(vec3<bool>(false, false, true))), select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, false), func_1(Struct_2(Struct_1(vec4<i32>(var_0.x, 62629i, u_input.a, var_0.x), -1515f, 1i, vec2<f32>(-2131f, 548f), var_0.wx), Struct_1(var_0, -2692f, 5257i, vec2<f32>(886f, 1000f), vec2<i32>(u_input.a, -37987i)), 4294967295u), 0i), false))));
    let var_2 = var_0.x;
    var var_3 = var_0 | _wgslsmith_clamp_vec4_i32(vec4<i32>(-4241i, ~u_input.a, var_0.x, -17776i), var_0, vec4<i32>(-1i, -12239i, 8173i | _wgslsmith_dot_vec2_i32(vec2<i32>(-1740i, u_input.a), var_0.zw), var_0.x));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2431f, 529f)))) - vec2<f32>(_wgslsmith_div_f32(631f, 2117f), -930f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(226f, 1219f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, -318f)), vec2<bool>(var_1.x, false))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1600f, -472f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1017f, 1241f)))))))));
    var_1 = !vec2<bool>(!var_1.x, false);
    var var_5 = vec4<f32>(-305f, _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f - _wgslsmith_f_op_f32(var_4.x + var_4.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.x), 274f, var_1.x))), var_4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(round(var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_4.x, -1000f, 922f, var_5.x), vec4<f32>(var_5.x, -150f, var_5.x, -613f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1004f, -353f, var_4.x, var_4.x), vec4<f32>(var_4.x, -250f, -1029f, -227f), vec4<bool>(false, true, var_1.x, var_1.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(838f, -1297f, 1515f, var_5.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.x, var_5.x, var_4.x, -145f))))), ~abs(1u), _wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, var_4.x, var_1.x)) - _wgslsmith_f_op_f32(var_4.x + -1251f))))));
}

