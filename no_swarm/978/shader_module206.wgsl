struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    var var_0 = ~vec3<u32>(97238u, reverseBits(~arg_1) ^ ~0u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(countOneBits(3770u), u_input.a ^ arg_1)));
    var var_1 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(46767u | (13360u | arg_1), arg_1), u_input.a, ~0u), ~arg_1);
    var_1 = Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~var_1.a, var_1.a), ~(var_1.a << (var_1.a % vec3<u32>(32u)))) ^ ~abs(vec3<u32>(arg_1, 33965u, u_input.c) >> (vec3<u32>(arg_1, var_1.a.x, 0u) % vec3<u32>(32u))), 3071u);
    var_1 = Struct_1(firstTrailingBit(~vec3<u32>(2475u | var_0.x, 17308u, select(9062u, var_0.x, true))), 1575u);
    var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(~abs(arg_1)), ~_wgslsmith_dot_vec3_u32(var_1.a, var_1.a) >> (_wgslsmith_mod_u32(~var_0.x, var_0.x) % 32u), ~0u), vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, 1u) << (min(var_0.xy, vec2<u32>(59537u, arg_1)) % vec2<u32>(32u)), ~var_1.a.zy), min(~var_0.x, _wgslsmith_clamp_u32(62395u, var_0.x, var_1.b) | 0u), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1, arg_1, 63080u, arg_1) & vec4<u32>(4794u, var_1.b, 2836u, 1u)), (vec4<u32>(arg_1, arg_1, u_input.c, u_input.a) & vec4<u32>(4294967295u, 32598u, arg_1, 1u)) >> ((vec4<u32>(u_input.c, 1967u, var_0.x, var_1.b) | vec4<u32>(var_0.x, 4294967295u, arg_1, u_input.c)) % vec4<u32>(32u)))));
    return _wgslsmith_dot_vec2_u32(var_0.yy, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.x, u_input.c), var_0.yx | vec2<u32>(17966u, 31911u)), vec2<u32>(4294967295u, var_0.x) << (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))) >> (vec2<u32>(var_1.a.x, select(~u_input.a, 1u, all(vec2<bool>(true, false)))) % vec2<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a), 11970u), ~reverseBits(_wgslsmith_dot_vec2_u32(arg_1, arg_2.a.xy)), 46317u), ~_wgslsmith_sub_u32(arg_1.x >> (~arg_1.x % 32u), _wgslsmith_dot_vec3_u32(arg_2.a, vec3<u32>(0u, 4708u, arg_2.a.x))));
    let var_1 = _wgslsmith_clamp_u32(1u & max(1u, abs(0u) & u_input.c), u_input.c, _wgslsmith_add_u32(26178u, countOneBits(_wgslsmith_clamp_u32(~arg_2.a.x, _wgslsmith_dot_vec2_u32(arg_1, vec2<u32>(var_0.a.x, arg_2.b)), func_3(vec3<bool>(false, false, true), 0u, vec2<i32>(0i, u_input.b))))));
    var var_2 = -1000f;
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(vec3<bool>(arg_0, arg_0, false), arg_1.x, vec2<i32>(-1i, -1i)), var_1), select(select(vec2<u32>(var_0.a.x, 2860u), var_0.a.yz, true), vec2<u32>(u_input.a, var_0.b) >> (vec2<u32>(27144u, 3516u) % vec2<u32>(32u)), select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(max(4294967295u, arg_1.x), ~1u), arg_2.a.x), abs(4294967295u)), 11829u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(685f, 213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -511f)))))) - _wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * arg_0))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(abs(1246f)))), _wgslsmith_f_op_f32(var_0 * -322f));
    let var_2 = var_1.x;
    let var_3 = firstLeadingBit(0i);
    var var_4 = -min(~(~arg_1) << (u_input.c % 32u), 1i);
    return Struct_1(~(~(~(~vec3<u32>(49085u, 4294967295u, 21467u)))), abs((~17844u >> (_wgslsmith_div_u32(1u, 1u) % 32u)) << (abs(func_3(vec3<bool>(false, false, false), 46632u, vec2<i32>(arg_1, -26640i))) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = ~(~arg_2.a);
    let var_1 = func_4(-776f, ~_wgslsmith_div_i32(u_input.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, -37172i))));
    var var_2 = var_1;
    var_2 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(394f - arg_1)) * _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(func_2(true, arg_2.a.xx, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1341f)))), -u_input.b);
    let var_3 = abs(~(vec4<u32>(arg_2.a.x, 14890u, u_input.c, arg_2.b) >> (min(vec4<u32>(1u, arg_2.a.x, u_input.a, var_2.a.x), vec4<u32>(169075u, var_2.a.x, 32535u, 47886u)) % vec4<u32>(32u)))) ^ vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.a, arg_2.b, arg_2.a.x), vec4<u32>(0u, 4294967295u, 1u, 7076u)), ~(~arg_0.a.x << (var_1.b % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.a, vec3<u32>(var_1.b, u_input.c, 50456u)), vec3<u32>(var_1.b, u_input.a, var_0.x) & var_0) ^ min(0u, 0u), ~(~126434u));
    return arg_1;
}

fn func_1() -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1468f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1119f, 1000f) - -323f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-385f))) * -2280f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, 166f)) - _wgslsmith_f_op_f32(-430f + -391f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f + 2065f))), true)), _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, vec2<u32>(1u, 0u), Struct_1(vec3<u32>(u_input.a, 1u, 1u), u_input.c))) * 312f), _wgslsmith_add_i32(~u_input.b, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(any(vec2<bool>(false, true)), vec2<u32>(1u, u_input.c) << (vec2<u32>(1u, 16298u) % vec2<u32>(32u)), Struct_1(vec3<u32>(u_input.c, 4294967295u, u_input.a), 0u))) + _wgslsmith_f_op_f32(sign(424f))), Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, u_input.a)), vec3<u32>(u_input.a, u_input.c, u_input.a)), 1u))));
    let var_1 = abs(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, ~_wgslsmith_sub_i32(2147483647i, u_input.b), u_input.b, -1i), vec4<i32>(-1i) * -(vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b) | vec4<i32>(u_input.b, u_input.b, u_input.b, 0i))));
    let var_2 = 0u;
    let var_3 = ~firstLeadingBit(vec4<u32>(~min(4294967295u, u_input.c), var_2, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.c), abs(vec2<u32>(var_2, var_2))), ~(~49603u)));
    return 1u < (0u << (~(4294967295u >> (~u_input.a % 32u)) % 32u));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(!any(!select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), false)), arg_0, func_1());
    let var_1 = true;
    let var_2 = -1i;
    let var_3 = abs(-vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(1i), var_2 ^ var_2), ~var_2, -abs(var_2)));
    let var_4 = select(!select(vec4<bool>(select(arg_0, true, var_1), any(vec4<bool>(true, arg_0, arg_0, var_0.x)), true, func_1()), select(!vec4<bool>(true, arg_0, false, var_1), vec4<bool>(var_0.x, false, true, var_1), arg_0), !select(vec4<bool>(arg_0, var_0.x, true, arg_0), vec4<bool>(true, false, var_0.x, arg_0), true)), !(!select(select(vec4<bool>(arg_0, false, true, var_0.x), vec4<bool>(true, false, var_0.x, arg_0), false), !vec4<bool>(false, var_1, var_1, true), var_1)), !(!(!(!vec4<bool>(true, arg_0, false, var_0.x)))));
    return func_4(555f, ~(~select(1i, max(var_3.x, u_input.b), false || arg_0)));
}

fn func_7(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_0;
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, 11492u) | var_0.a.zy, var_0.a.xx), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.a.yx, vec2<u32>(4294967295u, u_input.a)), _wgslsmith_clamp_vec2_u32(arg_0.a.zx, arg_0.a.xy, arg_0.a.yx))), ~var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(!func_1(), Struct_1(max(vec3<u32>(4294967295u, 65765u, 0u), vec3<u32>(u_input.a, 12612u, u_input.c)) ^ vec3<u32>(u_input.a, 49166u, 46469u), (u_input.c | 58557u) >> (select(0u, 0u, true) % 32u)), Struct_1(abs(~vec3<u32>(1u, 4294967295u, 49709u)), 29343u), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -111f)), -1i)), select(all(vec2<bool>(true, true)), !(!any(vec4<bool>(false, false, false, true))), all(vec2<bool>(true, true))), select(select(vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(true, func_1(), true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true))), !(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false))), true));
    var var_1 = ~reverseBits(firstLeadingBit(u_input.b));
    var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2548f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(742f + -1624f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1079f))), _wgslsmith_div_vec3_f32(vec3<f32>(711f, -1035f, 240f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(547f, -1000f, 113f), vec3<f32>(1000f, -1000f, 889f), false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, true, true)), vec3<bool>(true, true, true))))));
    var var_3 = func_6(all(vec3<bool>(true, true, true)) && any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), Struct_1(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, 1u), vec3<u32>(67571u, var_0, 1u)), ~u_input.a, u_input.c), ~(_wgslsmith_clamp_u32(u_input.c, var_0, u_input.a) >> (12026u % 32u))), func_4(_wgslsmith_f_op_f32(func_5(Struct_1(func_6(false, Struct_1(vec3<u32>(var_0, 1u, var_0), 66968u), Struct_1(vec3<u32>(var_0, u_input.c, var_0), var_0), Struct_1(vec3<u32>(u_input.c, var_0, var_0), u_input.c)).a, 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)), _wgslsmith_f_op_f32(317f + -1656f)), Struct_1(~vec3<u32>(28849u, var_0, 0u), var_0))), 1i), func_6(true, Struct_1(~vec3<u32>(var_0, var_0, 4294967295u), ~func_6(false, Struct_1(vec3<u32>(4294967295u, u_input.c, 4294967295u), var_0), Struct_1(vec3<u32>(1u, u_input.a, 36603u), 4869u), Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), u_input.a)).b), func_4(_wgslsmith_f_op_f32(var_2.x * var_2.x), u_input.b), Struct_1(~(~vec3<u32>(33539u, u_input.a, 4294967295u)), 4294967295u << (_wgslsmith_add_u32(u_input.a, u_input.c) % 32u))));
    let var_4 = func_4(_wgslsmith_f_op_f32(abs(var_2.x)), ~_wgslsmith_clamp_i32(1i, u_input.b, _wgslsmith_sub_i32(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-25000i, 30738i, -2147483647i, 3585i), vec4<i32>(0i, u_input.b, u_input.b, 24146i)))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_vec2_u32(min(abs(vec2<u32>(u_input.a, 1u)), firstTrailingBit(vec2<u32>(4294967295u, 1u))), firstLeadingBit(min(var_4.a.xz, var_4.a.zx))), vec2<u32>(55525u, u_input.c)), u_input.b);
}

