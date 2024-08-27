struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: f32,
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: vec4<i32>) -> bool {
    let var_0 = select(select(vec3<bool>(!(!arg_1.x), !(-1i > arg_3.x), arg_0.x), vec3<bool>(reverseBits(-1i) > u_input.a.x, true, true), !vec3<bool>(false, any(vec4<bool>(false, arg_1.x, true, true)), all(arg_1))), vec3<bool>(all(!select(vec2<bool>(true, arg_1.x), arg_1, arg_0.x)), true, true), vec3<bool>(false, !arg_1.x, any(!(!vec4<bool>(false, arg_0.x, true, true)))));
    let var_1 = Struct_1(~u_input.c, _wgslsmith_mod_i32(_wgslsmith_sub_i32(27159i, _wgslsmith_mult_i32(arg_3.x, u_input.a.x)) ^ ((arg_3.x << (4294967295u % 32u)) & (1i >> (u_input.c % 32u))), 42503i >> (u_input.c % 32u)));
    var var_2 = Struct_1(0u, var_1.b);
    let var_3 = var_1;
    var_2 = Struct_1(_wgslsmith_mod_u32(~var_3.a << (54355u % 32u), 37135u) << (18328u % 32u), reverseBits(2147483647i) << ((u_input.c ^ 4294967295u) % 32u));
    return all(vec2<bool>(var_0.x, false));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    let var_0 = arg_2;
    let var_1 = vec2<u32>(min(arg_2.a, ~23709u ^ arg_2.a), _wgslsmith_mod_u32((u_input.c >> (65919u % 32u)) ^ 10690u, 4294967295u)) << (vec2<u32>(abs(_wgslsmith_div_u32(u_input.b.x, abs(25581u))), max(4294967295u, 33967u)) % vec2<u32>(32u));
    let var_2 = !(func_3(select(!arg_1.yz, !arg_1.xy, vec2<bool>(true, false)), vec2<bool>(true, false), -17118i, firstLeadingBit(firstTrailingBit(u_input.a))) || true);
    var var_3 = vec3<u32>(u_input.c, _wgslsmith_add_u32(~(~arg_2.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(~0u, ~var_1.x), ~1u)), 58086u);
    var var_4 = i32(-1i) * -2147483647i;
    return _wgslsmith_f_op_f32(abs(1030f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -804f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(-266f, arg_0)), vec2<f32>(-1186f, -318f)), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0), arg_2 || arg_2)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(238f, 223f))))));
    var var_1 = Struct_1(arg_1.a, i32(-1i) * -(-11746i & _wgslsmith_mod_i32(30652i, arg_1.b)));
    var var_2 = Struct_1(1u & ~var_1.a, -26232i);
    var var_3 = arg_1;
    var var_4 = Struct_1(83480u & _wgslsmith_sub_u32(var_3.a, ~19255u), arg_1.b);
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(~vec2<u32>(u_input.b.x, ~arg_1.a));
    let var_1 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0))))), _wgslsmith_f_op_f32(step(682f, arg_0)))), Struct_1(reverseBits(countOneBits(countOneBits(0u))), arg_1.b), _wgslsmith_f_op_f32(func_2(arg_1, vec4<bool>(true, true, any(vec2<bool>(true, false)), arg_1.a > u_input.b.x), Struct_1(28918u, u_input.a.x | u_input.a.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f - arg_0) * -1230f));
    var var_2 = !(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(9488u == arg_1.a, true)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0));
    let var_4 = abs(-29260i);
    return Struct_1(arg_1.a, arg_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = any(vec2<bool>(func_3(vec2<bool>(func_3(vec2<bool>(true, true), vec2<bool>(false, true), u_input.a.x, vec4<i32>(-1i, -70649i, arg_1.b, arg_1.b)), true), vec2<bool>(true, true), 1i, -(vec4<i32>(-1i, 1i, 34548i, 2147483647i) >> (u_input.b % vec4<u32>(32u)))), func_3(vec2<bool>(true, true), vec2<bool>(true, true), -_wgslsmith_mult_i32(u_input.a.x, arg_1.b), ~(-vec4<i32>(30765i, u_input.a.x, -64521i, 0i)))));
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-258f, _wgslsmith_f_op_f32(round(-1408f)))) - 492f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1189f)))), 176f)), Struct_1(arg_0.a, _wgslsmith_mod_i32(func_1(_wgslsmith_f_op_f32(-240f + 1087f), Struct_1(4155u, arg_0.b)).b, i32(-1i) * -32062i)), !(!(var_0 & true)));
    var_1 = Struct_1(~(~(arg_1.a >> (arg_0.a % 32u))) >> (min(abs(var_1.a), select(0u, var_1.a, var_0)) % 32u), 0i);
    let var_2 = vec3<bool>(!(!(!var_0)), _wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(var_1.a, 4294967295u)), u_input.b.yy, vec2<bool>(var_0, var_0)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.a, arg_1.a)), vec2<u32>(arg_1.a, arg_0.a))) != 1u, true);
    let var_3 = vec4<bool>(var_0, true, all(select(select(select(vec3<bool>(var_2.x, true, var_0), var_2, var_2), var_2, vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(!var_0, false, false), !var_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(578f, -469f, var_0))) - -228f) <= _wgslsmith_f_op_f32(max(-1382f, 1277f)));
    return arg_1;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    let var_0 = func_4(arg_2, arg_0, false);
    let var_1 = func_4(arg_2, func_1(_wgslsmith_div_f32(-1605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2))), func_1(-1237f, Struct_1(~arg_0.a, u_input.a.x))), true);
    var var_2 = vec2<u32>(func_1(arg_2, Struct_1(4294967295u, arg_0.b | firstLeadingBit(20205i))).a, 1u);
    return Struct_1(~var_2.x, arg_0.b);
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = u_input.c;
    let var_1 = arg_1;
    let var_2 = func_6(func_1(_wgslsmith_f_op_f32(322f - _wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(floor(-1421f)))), arg_1), !vec3<bool>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_1.a, 77958u, 46938u, 36455u)) != func_5(Struct_1(33020u, arg_2.x), Struct_1(46416u, arg_1.b)).a, all(vec3<bool>(true, true, true)), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + -519f) - -795f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1503f, 1835f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-446f, _wgslsmith_f_op_f32(sign(759f)))))));
    var var_3 = func_6(var_2, select(!vec3<bool>(true, 4294967295u != arg_1.a, true), vec3<bool>(true, true == all(vec2<bool>(false, true)), true), select(vec3<bool>(all(vec2<bool>(false, false)), u_input.a.x < arg_1.b, all(vec4<bool>(true, true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1061f)) + -424f)).a;
    var_3 = 21848u;
    return StorageBuffer(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2, u_input.a.xz, vec2<i32>(var_2.b, arg_2.x)), reverseBits(vec2<i32>(-1025i, arg_1.b))), arg_1.b, func_4(-1419f, arg_1, any(vec2<bool>(false, true))).b, arg_2.x), -_wgslsmith_sub_vec4_i32(~u_input.a, ~vec4<i32>(var_2.b, 46380i, arg_1.b, 9519i))), abs(u_input.b.yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(func_4(-1038f, arg_3, false).a, _wgslsmith_dot_vec2_i32(arg_2, arg_2)), vec4<bool>(true, true, true, true), Struct_1(~arg_1.a, ~(-37438i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(46079u, u_input.c), u_input.b.x, 9521u) | u_input.c, _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, 51493u), ~u_input.c, ~(~9075u))), -4018i);
    let x = u_input.a;
    s_output = func_7(max(-u_input.a.x, ~2147483647i), func_6(func_5(func_1(_wgslsmith_f_op_f32(floor(503f)), Struct_1(0u, var_0.b)), func_4(_wgslsmith_f_op_f32(min(223f, 1277f)), Struct_1(57613u, 2147483647i), all(vec2<bool>(true, true)))), vec3<bool>(true, true, true), -910f), u_input.a.ww, Struct_1(0u, -u_input.a.x | ~(~(-44637i))));
}

