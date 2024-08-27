struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> u32 {
    return arg_1.a;
}

fn func_3() -> bool {
    let var_0 = Struct_1(~(~_wgslsmith_sub_u32(76550u, select(55080u, 1u, true))), vec3<bool>(!all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), true))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f * -171f) + _wgslsmith_f_op_f32(step(-1319f, -354f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1000f)))), 1f))));
    let var_1 = any(var_0.c);
    var var_2 = ~(~0u);
    var var_3 = vec2<i32>(~(~(~select(5026i, u_input.b.x, var_1))), u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) + -693f);
    return !(!(true & var_0.c.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_1;
    var var_1 = all(arg_1.c.xz);
    var_1 = (!select(true, !arg_1.b.x, arg_1.b.x) | (firstTrailingBit(_wgslsmith_mult_u32(var_0.a, 0u)) < var_0.a)) | false;
    var_1 = !(var_0.b.x | !((true | arg_3.x) | var_0.b.x));
    var_1 = all(vec2<bool>(!arg_1.c.x, arg_1.b.x));
    return -2793i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(-firstLeadingBit(~(-vec4<i32>(u_input.b.x, u_input.b.x, -34427i, u_input.a.x))), -2353f, func_4(u_input.a.x, Struct_1(36190u, vec3<bool>(any(vec2<bool>(true, false)), true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1029f, 894f, -1335f), vec3<f32>(-1692f, 1074f, 852f)), vec3<f32>(914f, 860f, -595f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1236f * 1612f))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), any(vec3<bool>(true, true, true))), vec4<bool>(func_3(), u_input.a.x <= u_input.b.x, true, false), false)), Struct_1(~1u, vec3<bool>(true, true, ~u_input.b.x <= ~(-1i)), !vec3<bool>(any(vec3<bool>(true, true, true)), true, true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(363f, 679f, 552f), vec3<f32>(-294f, 1000f, 309f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-778f, 1272f, 1049f) - vec3<f32>(776f, 1236f, 690f)))))));
    let var_1 = var_0.d.c.x;
    let var_2 = !var_0.d.c;
    var_0 = Struct_2(~(-firstTrailingBit(var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b))), -u_input.b.x, Struct_1(_wgslsmith_sub_u32(1u, min(1u, 137263u)), select(var_0.d.b, vec3<bool>(var_0.d.b.x, all(var_2.xy), var_0.d.c.x), var_0.d.b.x), var_0.d.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(279f, -1223f, var_0.b), var_0.d.d, !(-568f == var_0.b)))));
    var var_3 = vec3<bool>(!var_2.x, true, var_2.x);
    return Struct_1(~49608u, var_2, select(select(vec3<bool>(true, true, any(vec2<bool>(false, var_2.x))), vec3<bool>(!var_2.x, all(vec4<bool>(true, var_3.x, var_0.d.b.x, false)), true), var_2), vec3<bool>(all(select(vec3<bool>(var_2.x, var_0.d.b.x, true), vec3<bool>(true, true, var_3.x), true)), var_2.x && var_3.x, !(var_3.x | var_3.x)), all(!select(vec2<bool>(var_0.d.b.x, true), var_2.yx, vec2<bool>(var_3.x, false)))), var_0.d.d);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = func_2();
    return func_2().c;
}

fn func_6(arg_0: bool) -> u32 {
    let var_0 = Struct_1(~0u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 1u, 0u, 52578u)), vec3<bool>(arg_0, true, any(vec4<bool>(!arg_0, !arg_0, func_3(), true))), vec3<bool>(func_5(Struct_2(vec4<i32>(2147483647i, 23867i, -9680i, 24841i), -1656f, 3940i, Struct_1(1u, vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<f32>(382f, 864f, 526f))), Struct_1(4294967295u, vec3<bool>(true, true, true), vec3<bool>(arg_0, true, arg_0), vec3<f32>(1551f, 275f, 1168f))).x && arg_0, true, any(!vec2<bool>(false, arg_0))), vec3<f32>(1f, -209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1742f, 1000f)) + 628f)));
    let var_1 = 4294967295u;
    var var_2 = ~var_0.a;
    var var_3 = _wgslsmith_mod_u32(~(_wgslsmith_clamp_u32(~84040u, _wgslsmith_mult_u32(0u, var_1), min(64586u, var_1)) | 0u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(30896u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 1u), vec2<u32>(1u, var_1)), 28596u), firstTrailingBit(~vec3<u32>(var_1, var_1, var_0.a))));
    let var_4 = Struct_1(_wgslsmith_div_u32(0u, 8668u), func_2().b, vec3<bool>(arg_0 & func_5(Struct_2(vec4<i32>(u_input.b.x, 0i, u_input.a.x, u_input.a.x), 1000f, -15699i, Struct_1(var_1, vec3<bool>(var_0.c.x, false, false), vec3<bool>(var_0.b.x, false, true), vec3<f32>(var_0.d.x, var_0.d.x, -1330f))), Struct_1(var_0.a, var_0.b, var_0.c, vec3<f32>(-575f, -153f, 1420f))).x, all(vec3<bool>(var_0.b.x, !arg_0, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(772f, -676f, arg_0))) <= var_0.d.x), var_0.d);
    return ~83715u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 45317u;
    var_0 = ~(3806u << ((func_1(vec2<f32>(477f, -1000f), Struct_1(0u, vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<f32>(357f, 414f, -628f))) ^ 1u) % 32u)) >> (func_6(any(func_5(Struct_2(vec4<i32>(u_input.a.x, u_input.b.x, 37694i, 1i), 356f, u_input.a.x, Struct_1(1u, vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<f32>(-1425f, 511f, -786f))), func_2()))) % 32u);
    var_0 = 39256u;
    let var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    let var_2 = Struct_2(_wgslsmith_mod_vec4_i32(select(-vec4<i32>(u_input.b.x, -2147483647i, 28193i, u_input.b.x), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a.x, 12509i, 1i), vec4<i32>(u_input.a.x, 1i, u_input.b.x, u_input.a.x)), vec4<bool>(true, true, true, true)) & (~vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.a.x) & vec4<i32>(u_input.a.x, u_input.b.x, 18778i, u_input.a.x)), ~countOneBits(abs(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2147483647i, Struct_1(var_1.x, vec3<bool>(var_1.x == var_1.x, !any(vec2<bool>(false, false)), all(vec3<bool>(true, false, false))), vec3<bool>(true, true, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1417f)), _wgslsmith_f_op_f32(-829f + -3328f), -1873f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.d.x, _wgslsmith_add_i32(2147483647i, u_input.b.x), reverseBits(abs(vec4<u32>(123913u >> (var_2.d.a % 32u), max(var_1.x, 1u), ~1u, var_2.d.a))), ~max(vec4<u32>(~var_2.d.a, 25919u << (var_1.x % 32u), var_2.d.a, ~0u), ~firstTrailingBit(var_1)), var_2.d.a);
}

