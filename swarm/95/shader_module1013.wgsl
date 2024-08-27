struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.c.x, 0i, 0i), -(vec3<i32>(i32(-1i) * -11967i, -u_input.c.x, u_input.c.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), ~vec3<u32>(0u, u_input.a, 31039u)) % vec3<u32>(32u))), vec3<i32>(countOneBits(u_input.c.x), -9093i, _wgslsmith_sub_i32(firstTrailingBit(0i), ~countOneBits(u_input.c.x))));
    var var_1 = Struct_1(arg_0.a);
    var var_2 = abs(vec3<u32>(u_input.b, 29649u, 68205u));
    var_1 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-187f, _wgslsmith_f_op_f32(trunc(710f))), _wgslsmith_f_op_f32(trunc(-478f))));
    return vec3<bool>(var_1.a, false, !all(select(select(vec4<bool>(var_1.a, true, var_1.a, false), vec4<bool>(true, false, arg_0.a, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, var_1.a, false), select(vec4<bool>(var_1.a, true, var_1.a, true), vec4<bool>(var_1.a, false, true, true), var_1.a))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(arg_0.a);
    var var_1 = u_input.c | vec2<i32>(u_input.c.x, 0i);
    var var_2 = select(select(func_3(Struct_1(any(vec4<bool>(false, arg_0.a, false, arg_3.a)))), !(!vec3<bool>(var_0.a, arg_0.a, true)), func_3(arg_0)), vec3<bool>(!arg_3.a, func_3(Struct_1(arg_0.a)).x, true), vec3<bool>(any(vec4<bool>(false, all(vec4<bool>(true, true, arg_3.a, true)), all(vec3<bool>(false, false, arg_0.a)), true)), arg_3.a, u_input.a == firstLeadingBit(u_input.a)));
    var var_3 = vec3<bool>(arg_3.a, !arg_0.a, any(vec4<bool>(arg_0.a && true, 40793i < u_input.c.x, true, arg_3.a)));
    var_1 = vec2<i32>(firstLeadingBit(-(~_wgslsmith_mult_i32(arg_2.x, -46861i))), -3345i);
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = ~countOneBits(vec3<i32>(-_wgslsmith_mod_i32(2147483647i, 11611i), u_input.c.x, (u_input.c.x & -14406i) | max(u_input.c.x, u_input.c.x)));
    var_0 = reverseBits(reverseBits(~firstTrailingBit(vec3<i32>(u_input.c.x, 62004i, 58i) & vec3<i32>(u_input.c.x, -22536i, -4796i))));
    var_0 = _wgslsmith_clamp_vec3_i32(~(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, var_0.x, -38914i), reverseBits(vec3<i32>(var_0.x, -2147483647i, var_0.x)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.c.x, var_0.x, 32569i) >> (vec3<u32>(0u, u_input.b, 0u) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, var_0.x, var_0.x), vec3<i32>(-1i, var_0.x, -1i))), -vec3<i32>(-45977i, 0i, -var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, -12126i, 1i), -firstTrailingBit(vec3<i32>(var_0.x, 14565i, u_input.c.x)), -(~vec3<i32>(-2147483647i, 2147483647i, -41605i)))), reverseBits(~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-59635i, u_input.c.x, -2147483647i), vec3<i32>(var_0.x, var_0.x, 15695i), vec3<i32>(-51494i, -6118i, 29470i)))));
    let var_1 = Struct_1(-24024i < -(0i | var_0.x));
    var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(max(-vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(0i, 32131i, u_input.c.x)) << (vec3<u32>(~u_input.b, max(u_input.b, 0u), countOneBits(u_input.a)) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(-2147483647i, u_input.c.x, var_0.x)), vec3<i32>(-37420i, abs(0i), 65187i & var_0.x), vec3<i32>(firstLeadingBit(var_0.x), 37542i, var_0.x | u_input.c.x)), -(~vec3<i32>(u_input.c.x, var_0.x, -1i) >> (vec3<u32>(33317u, 0u, 0u) % vec3<u32>(32u)))), min(vec3<i32>(~u_input.c.x, firstTrailingBit(u_input.c.x), 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 13663i, 2147483647i) | vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), select(vec3<i32>(7600i, var_0.x, u_input.c.x), vec3<i32>(u_input.c.x, var_0.x, 11755i), false))) & firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, var_0.x, u_input.c.x), vec3<i32>(u_input.c.x, 30551i, 1488i)) >> (vec3<u32>(u_input.a, u_input.b, 4294967295u) % vec3<u32>(32u))));
    return Struct_1(false);
}

fn func_1() -> f32 {
    var var_0 = func_4(vec2<bool>(true, true), any(vec2<bool>(!func_2(Struct_1(false), vec2<f32>(-467f, -1526f), vec2<i32>(1i, u_input.c.x), Struct_1(false)), all(vec4<bool>(false, false, true, true)))), 660f);
    let var_1 = func_4(vec2<bool>(var_0.a, true), var_0.a, -927f);
    var_0 = var_1;
    var_0 = func_4(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, !var_0.a), !(!var_1.a)), !var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1468f - 532f), _wgslsmith_f_op_f32(ceil(822f)))), 1328f)) * -260f));
    var_0 = func_4(select(vec2<bool>(false, var_1.a), !func_3(var_1).zz, all(select(select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(true, true, true, var_0.a), vec4<bool>(true, var_1.a, false, var_1.a)), select(vec4<bool>(false, true, true, var_1.a), vec4<bool>(false, var_0.a, var_0.a, var_1.a), vec4<bool>(false, var_1.a, var_0.a, var_1.a)), all(vec3<bool>(true, false, var_0.a))))), !(-772f <= _wgslsmith_f_op_f32(sign(-840f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(162f)))) + _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(-267f + -404f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1255f, -609f)))) - 382f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (false != (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(328f - 103f))) == _wgslsmith_f_op_f32(func_1()))) | (select(~u_input.b, ~(u_input.a >> (u_input.a % 32u)), false && any(vec4<bool>(false, false, true, true))) == ~u_input.b);
    var_0 = true;
    var var_1 = ~vec3<u32>(36935u, min(u_input.b, ~(~u_input.b)), firstLeadingBit(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.a, u_input.b, u_input.b)), firstLeadingBit(vec3<u32>(u_input.a, 340u, 6770u)))));
    var var_2 = max(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.c.x, 1i, -2147483647i) >> (~vec3<u32>(4294967295u, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -18627i, -2147483647i), select(vec3<i32>(21343i, u_input.c.x, 31176i), vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), false), reverseBits(vec3<i32>(u_input.c.x, 9930i, -2147483647i)))), -(~12616i)), -_wgslsmith_clamp_i32(~u_input.c.x, select(2147483647i, u_input.c.x, true), u_input.c.x));
    var var_3 = true;
    let var_4 = vec3<f32>(-1619f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_1()));
    var_3 = (!all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true))) || true) == (any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, false)))) & all(vec2<bool>(true, true)));
    let var_5 = 1f != var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(41578u, 4294967295u, 38966u, var_1.x), vec4<u32>(0u, var_1.x, u_input.b, 102066u)), vec4<u32>(22705u, 73438u, 64842u, 4294967295u) & vec4<u32>(var_1.x, 24764u, u_input.a, 63106u)), select(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 47111u, 92514u, 19305u), vec4<u32>(var_1.x, u_input.b, u_input.b, 1u), vec4<u32>(36459u, 0u, 0u, var_1.x)), ~vec4<u32>(1u, var_1.x, u_input.a, 111670u)), ~vec4<u32>(1u, 1u, var_1.x, 84327u), any(select(vec4<bool>(var_5, false, false, true), vec4<bool>(true, var_5, false, true), vec4<bool>(true, var_5, true, var_5))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -307f, var_4.x, 1024f) * vec4<f32>(var_4.x, var_4.x, -1943f, var_4.x)))))));
}

