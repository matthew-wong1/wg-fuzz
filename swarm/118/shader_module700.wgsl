struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(i32(-2147483648), -1i, -2454i), vec3<i32>(1i, i32(-2147483648), 26868i), vec3<i32>(-31382i, 9860i, 1i), vec3<i32>(1i, 907i, 1i), vec3<i32>(2147483647i, 2147483647i, 37636i), vec3<i32>(0i, -1i, -67667i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(-37445i, -13185i, 1662i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(i32(-2147483648), 24350i, i32(-2147483648)), vec3<i32>(0i, -4725i, -15054i), vec3<i32>(0i, -29684i, i32(-2147483648)), vec3<i32>(0i, -40914i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -39091i, 2958i), vec3<i32>(-783i, -38866i, i32(-2147483648)), vec3<i32>(8204i, -35687i, 9849i), vec3<i32>(1i, -11359i, -1i), vec3<i32>(-18805i, 2147483647i, -57434i), vec3<i32>(i32(-2147483648), i32(-2147483648), -6396i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec3<bool> {
    return !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(false, false)), -158f != arg_0, true), all(vec4<bool>(true, true, true, true))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), u_input.a < 73036i), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(true, true, all(!select(func_3(1000f, 3465u, Struct_1(vec3<u32>(4294967295u, 100980u, 1u)), u_input.a), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    let var_1 = firstLeadingBit(vec3<u32>(59800u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_u32(select(4294967295u, ~1u, var_0.x), _wgslsmith_div_u32(reverseBits(4294967295u), max(45429u, 0u)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-209f, -578f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-490f, 1073f), vec2<f32>(-1053f, 1227f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(741f, -882f))), _wgslsmith_div_vec2_f32(vec2<f32>(468f, 451f), vec2<f32>(-829f, 365f))))));
    let var_3 = Struct_1(vec3<u32>(~_wgslsmith_sub_u32(var_1.x & var_1.x, ~6787u), reverseBits(var_1.x), _wgslsmith_mult_u32(_wgslsmith_add_u32(~262u, reverseBits(var_1.x)), ~var_1.x)));
    var var_4 = !(!vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), var_0.x, false, any(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, true, var_0.x)))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a, -11769i);
    let var_1 = ~vec4<i32>(var_0.x, var_0.x, 1i, u_input.a);
    var_0 = var_1.yy;
    var var_2 = arg_2;
    var var_3 = arg_2;
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global0 = array<vec3<i32>, 19>();
    global0 = array<vec3<i32>, 19>();
    var var_0 = u_input.a ^ _wgslsmith_add_i32(max(2800i, firstLeadingBit(u_input.a) & -1i), _wgslsmith_clamp_i32(i32(-1i) * -1i, u_input.a, -u_input.a ^ abs(-27108i)));
    var var_1 = arg_0;
    return select(false, any(vec4<bool>(true, all(arg_1.yy), arg_1.x, true)), false);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(abs(_wgslsmith_add_vec3_u32(~abs(arg_2.zxx), vec3<u32>(~arg_2.x, ~arg_2.x, 0u))));
    global0 = array<vec3<i32>, 19>();
    let var_1 = vec4<bool>(true, true, func_5(func_4(func_2(), arg_0.x, Struct_1(_wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(0u, 44745u, 0u)))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, true)), vec4<bool>(any(vec4<bool>(true, true, true, false)), var_0.a.x <= var_0.a.x, any(vec4<bool>(false, false, false, true)), u_input.a <= u_input.a), true), func_4(Struct_1(~var_0.a), arg_2.x, func_2())), false);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-594f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -450f)))) + arg_1.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1616f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-461f)), arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))))));
    var var_3 = true && var_1.x;
    return func_4(Struct_1(var_0.a), _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.a.x, 0u), ~_wgslsmith_dot_vec2_u32(arg_2.zz, vec2<u32>(arg_0.x, 432u))), func_4(var_0, ~0u << (~func_4(var_0, 4294967295u, Struct_1(var_0.a)).a.x % 32u), Struct_1(~arg_2.xyx << (~vec3<u32>(4294967295u, arg_2.x, 0u) % vec3<u32>(32u)))));
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(arg_1.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(454f, -213f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - _wgslsmith_f_op_f32(round(248f))))));
    var_0 = arg_1;
    let var_2 = all(!select(vec2<bool>(any(vec2<bool>(true, true)), false), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1.x != 547f), !func_3(-540f, 25466u, arg_1, u_input.a).zy));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-690f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, var_1.x, 1225f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.x, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -108f, var_1.x))), select(func_3(var_1.x, var_0.a.x, Struct_1(vec3<u32>(8778u, 18100u, arg_1.a.x)), -70379i), !vec3<bool>(true, var_2, false), true)))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(1u, 20593u, 1u), abs(max(22300u, 0u)), 0u) ^ 38899u;
    var var_2 = _wgslsmith_add_vec2_i32(select(reverseBits(vec2<i32>(u_input.a, u_input.a)) & _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -36569i), vec2<i32>(0i, u_input.a)), ~vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, u_input.a), true) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(42989u, 4294967295u), vec2<u32>(1u, 13023u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(u_input.a, -2147483647i), _wgslsmith_sub_i32(reverseBits(u_input.a), _wgslsmith_sub_i32(1i, u_input.a))), vec2<i32>(u_input.a, func_6(1u, func_1(vec2<u32>(1u, 1052u), vec3<f32>(1226f, 101f, 408f), vec4<u32>(10608u, 4294967295u, 105579u, 0u))))));
    let var_3 = Struct_1(func_4(func_4(func_4(Struct_1(vec3<u32>(0u, 4294967295u, 0u)), 27065u, func_4(Struct_1(vec3<u32>(41712u, 0u, 57036u)), 1u, Struct_1(vec3<u32>(1u, 0u, 1u)))), 20989u, func_1(~vec2<u32>(0u, 25036u), vec3<f32>(-341f, -1000f, -549f), reverseBits(vec4<u32>(1u, 0u, 87596u, 93131u)))), _wgslsmith_sub_u32(~8986u, ~0u >> (1u % 32u)), Struct_1(vec3<u32>(1u, 1u, 1u))).a);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1271f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1975f)))))));
    var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-625f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(109f, -326f)) * 749f) - -1020f))));
    let var_5 = func_2();
    var_1 = abs(abs(var_5.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~var_5.a.x);
}

