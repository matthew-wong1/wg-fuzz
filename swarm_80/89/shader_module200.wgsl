struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = ~vec4<i32>(firstLeadingBit(-(~u_input.a)), -10310i, u_input.a, ~(firstLeadingBit(-4461i) ^ u_input.a));
    return ~vec4<u32>(~(~_wgslsmith_add_u32(30969u, u_input.b.x)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(u_input.b.x, ~55442u), u_input.b.x), u_input.b.x, 0u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.x;
    var_0 = ~(~_wgslsmith_dot_vec4_u32(~func_3(), ~abs(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 19930u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(884f, 1513f, -804f) - vec3<f32>(385f, -444f, 118f))) + vec3<f32>(-207f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(round(609f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, -753f, -1185f))))))));
    let var_2 = var_1.x;
    var var_3 = !(!(!select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    let var_0 = vec3<bool>(!any(vec2<bool>(true, true)) & false, select(true, !any(vec2<bool>(true, true)), true), true);
    var var_1 = var_0.x;
    var var_2 = arg_0;
    let var_3 = vec4<bool>(!(u_input.b.x >= 19336u), false, select(var_0.x, true, ((var_0.x || false) & !var_0.x) || var_0.x), all(!select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
    var_1 = var_0.x;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1660f, 131f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1032f, -1360f)) - _wgslsmith_f_op_f32(642f * 992f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), -436f, _wgslsmith_f_op_f32(abs(155f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = vec2<i32>(~_wgslsmith_mod_i32(-46786i, 1i), arg_1.a);
    let var_1 = var_0.x;
    var var_2 = !(!select(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), u_input.b.x != 28115u), true));
    var var_3 = func_2(Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(17494i, var_1, 0i, -42200i), reverseBits(vec4<i32>(54806i, -8602i, var_0.x, var_1)))), arg_1, Struct_1(~1i), func_2(arg_1, func_2(Struct_1(i32(-1i) * -2147483647i), arg_1, arg_1, func_2(arg_1, arg_1, func_2(Struct_1(u_input.a), arg_1, arg_1, arg_1), arg_1)), func_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-26426i, 71614i, 0i, 78393i), vec4<i32>(-1i, u_input.a, var_0.x, var_1))), func_2(func_2(arg_1, arg_1, Struct_1(u_input.a), arg_1), func_2(arg_1, Struct_1(15546i), Struct_1(var_0.x), arg_1), Struct_1(-1i), arg_1), arg_1, Struct_1(_wgslsmith_clamp_i32(var_1, var_1, arg_1.a))), arg_1));
    var_2 = vec4<bool>(var_2.x, !(!var_2.x & any(vec2<bool>(true, false))), true, var_2.x);
    return abs(u_input.b.x);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a);
    let var_1 = var_0;
    var var_2 = _wgslsmith_div_u32(~0u, ~func_5(_wgslsmith_f_op_vec4_f32(func_4(func_2(Struct_1(30233i), var_0, var_1, var_0), u_input.b.x)), func_2(func_2(var_0, var_0, Struct_1(var_1.a), Struct_1(var_1.a)), Struct_1(-39571i), func_2(var_1, Struct_1(u_input.a), Struct_1(var_1.a), var_0), func_2(var_0, var_1, var_1, Struct_1(18424i))), _wgslsmith_f_op_vec4_f32(func_4(func_2(var_1, Struct_1(var_1.a), Struct_1(51970i), Struct_1(-32112i)), u_input.b.x)).x, _wgslsmith_f_op_f32(775f - _wgslsmith_div_f32(-189f, -689f))));
    var_2 = 4294967295u;
    let var_3 = select(vec2<i32>(_wgslsmith_mult_i32(max(-36140i >> (0u % 32u), _wgslsmith_clamp_i32(142i, 2859i, var_1.a)), 0i), u_input.a), ~(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(1i, 2147483647i)))), select(vec2<bool>(true, false), select(vec2<bool>(any(vec4<bool>(false, false, true, false)), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(false, true), vec2<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(true, false, false, false))), !select(vec2<bool>(false, false), vec2<bool>(false, false), true))));
    return Struct_1(u_input.a);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = ~(-45590i);
    let var_1 = ~u_input.b.x;
    var var_2 = _wgslsmith_dot_vec3_u32(~vec3<u32>(99046u, u_input.b.x, u_input.b.x), _wgslsmith_div_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 34425u, u_input.b.x), vec3<u32>(12090u, 0u, u_input.b.x))), u_input.b));
    var_2 = ~u_input.b.x;
    var_2 = var_1;
    return Struct_1(-3558i);
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f * -844f)), _wgslsmith_f_op_f32(f32(-1f) * -529f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1113f, -961f)), -406f) * vec4<f32>(218f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1000f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(573f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1923f * 1314f), _wgslsmith_f_op_f32(select(-1500f, -352f, false))))))));
    var var_1 = ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.xx), 0u, 4294967295u << (u_input.b.x % 32u), 4294967295u), (vec4<u32>(63575u, 727u, u_input.b.x, u_input.b.x) & vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 1u)) & vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 4294967295u), ~vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x)), vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x) ^ vec2<u32>(1u, u_input.b.x), vec2<u32>(44551u, 1u)), ~u_input.b.x ^ 1u, ~_wgslsmith_mult_u32(u_input.b.x, 1u)));
    let var_2 = vec4<bool>(any(vec3<bool>(true, false, !(var_1.x > 5627u))), !(-34702i < func_1().a), var_1.x > _wgslsmith_clamp_u32(~1u & ~u_input.b.x, abs(25672u), ~40286u), !(true && (all(vec4<bool>(true, false, true, true)) || any(vec3<bool>(true, false, false)))));
    return arg_2;
}

fn func_8(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = func_6(arg_2);
    let var_1 = -1i;
    var var_2 = countOneBits(firstTrailingBit(~var_0.a ^ ~_wgslsmith_div_i32(-1i, var_1)));
    var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1159f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(356f)), 1f, -1i <= arg_2.a)))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_3, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(487f, 1314f) - _wgslsmith_f_op_f32(f32(-1f) * -1064f))))), _wgslsmith_f_op_f32(func_8(Struct_1(countOneBits(-29853i)), Struct_1(-max(u_input.a, u_input.a)), func_7(Struct_1(-2147483647i), func_6(func_1()), Struct_1(~32241i)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true))))));
    var var_1 = firstTrailingBit(select(u_input.b.x | u_input.b.x, u_input.b.x, !any(vec3<bool>(false, true, true))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1435f)))))));
    var var_2 = Struct_1(-2147483647i);
    let var_3 = func_6(func_2(Struct_1(0i), Struct_1(1i), func_6(Struct_1(u_input.a ^ 1i)), func_6(Struct_1(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec3<i32>(u_input.a, func_1().a, _wgslsmith_div_i32(var_3.a, var_3.a)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.a, -40386i) ^ vec3<i32>(1i, 21744i, -1i), firstLeadingBit(vec3<i32>(var_2.a, u_input.a, u_input.a)))), vec3<i32>(_wgslsmith_clamp_i32(~u_input.a, var_2.a, firstLeadingBit(10917i)), ~_wgslsmith_mult_i32(var_3.a, -2147483647i), ~_wgslsmith_mult_i32(var_3.a, u_input.a)) | vec3<i32>(-u_input.a, var_2.a, -51585i), 15549i, 40769i);
}

