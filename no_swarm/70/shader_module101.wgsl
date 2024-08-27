struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> bool {
    return any(!vec2<bool>(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec4<u32>(u_input.a, 1u, ~23672u, ~32011u);
    let var_1 = !vec4<bool>(!(false & arg_1.c) && true, any(vec3<bool>(false, true, true)) && false, !((-7635i == arg_0) != any(vec2<bool>(arg_1.b.x, true))), true);
    var var_2 = var_1.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(465f)))))), arg_1.a.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_1.a, var_1.zx))), _wgslsmith_f_op_vec2_f32(arg_1.a - _wgslsmith_f_op_vec2_f32(step(arg_1.a, vec2<f32>(arg_1.a.x, -851f)))))), _wgslsmith_f_op_vec2_f32(-arg_1.a)))));
    var_2 = !(!func_3());
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f * var_3.x) - _wgslsmith_div_f32(var_3.x, arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1057f * var_3.x) + _wgslsmith_f_op_f32(select(438f, arg_1.a.x, false)))), vec2<f32>(-1437f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_1.a.x)))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-562f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) + _wgslsmith_f_op_f32(max(-682f, -1000f))))));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, 504f, 1274f, -803f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, _wgslsmith_f_op_f32(114f + -533f), _wgslsmith_f_op_f32(275f - 1000f), -1057f))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_i32(_wgslsmith_add_i32(-39591i, 1i), select(2147483647i, -1i, true) & -8627i), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.wy - vec2<f32>(var_0.x, 626f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 767f)))), vec3<bool>(true, false, true), func_3() != true, 1i != _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 16404i), vec2<i32>(26619i, 3062i)), vec3<bool>(true, true, true)))), !(!vec3<bool>(true, any(vec2<bool>(true, false)), select(false, true, false))), false, func_3(), vec3<bool>(any(vec3<bool>(true, true, true)), false, true));
    var var_2 = Struct_1(var_1.a, select(select(select(select(var_1.e, var_1.b, vec3<bool>(var_1.b.x, var_1.c, false)), vec3<bool>(true, true, true), var_1.b), vec3<bool>(!var_1.d, !var_1.b.x, var_1.e.x), select(var_1.e, !var_1.b, var_1.e.x)), !select(!vec3<bool>(true, var_1.e.x, var_1.c), var_1.b, func_3()), vec3<bool>(true, all(!vec4<bool>(var_1.d, true, var_1.c, var_1.e.x)), false)), false, var_1.b.x, select(!vec3<bool>(all(vec3<bool>(true, var_1.c, true)), !var_1.c, true), var_1.b, ((var_0.x <= var_1.a.x) & select(true, false, true)) & any(vec2<bool>(true, var_1.e.x))));
    var var_3 = var_0.x;
    let var_4 = vec3<u32>(_wgslsmith_div_u32(u_input.a, select(firstLeadingBit(73128u), ~u_input.a ^ (u_input.a >> (u_input.a % 32u)), !func_3())), u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 10254u, 1u), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), max(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))), vec4<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 31524u, 1u), vec3<u32>(u_input.a, 7947u, u_input.a)), u_input.a), u_input.a ^ ~u_input.a, ~(~108946u))));
    return any(!select(vec4<bool>(func_3(), 52667u >= var_4.x, var_1.b.x, var_1.b.x), select(vec4<bool>(var_2.d, true, var_2.e.x, var_1.b.x), select(vec4<bool>(false, false, var_1.b.x, false), vec4<bool>(var_2.b.x, var_2.d, var_2.d, false), vec4<bool>(var_1.e.x, var_2.b.x, var_1.d, var_2.e.x)), !var_1.c), select(0u, 39739u, var_1.e.x) > 1u));
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<bool>(false, false, !(!select(true, true, true)));
    let var_1 = ~1u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 531f)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-167f, 719f))))))), vec3<bool>(var_0.x, var_0.x, var_0.x), true, (~(var_1 & 0u) <= (min(48444u, u_input.a) | var_1)) && var_0.x, select(!select(vec3<bool>(true, false, false), !vec3<bool>(var_0.x, var_0.x, var_0.x), true & var_0.x), vec3<bool>(true, all(!var_0.xz), var_0.x), true));
    let var_3 = !all(vec4<bool>(func_2(), var_0.x | true, true, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, false, var_0.x, true), vec4<bool>(false, var_0.x, var_2.c, var_2.c)))));
    var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_2.a)), vec3<bool>(var_3 && any(select(var_2.e, vec3<bool>(var_2.d, false, var_0.x), var_2.b.x)), true, !all(select(var_2.b, vec3<bool>(var_2.b.x, var_0.x, true), var_3))), var_0.x, !var_2.b.x, vec3<bool>(!any(var_0), any(select(select(var_2.b, var_0, var_2.b.x), var_2.e, select(var_2.e, vec3<bool>(false, var_2.b.x, false), var_2.b))), !(!(!var_3))));
    return Struct_1(var_2.a, !var_0, var_3, var_3, var_0);
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = max(vec4<i32>(29787i, _wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, 1i), 2147483647i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, 20575i) | ~(-2147483647i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.a, 0u), _wgslsmith_add_u32(46226u, 5500u), u_input.a, 1u), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 100416u, 1u) | vec4<u32>(1u, u_input.a, u_input.a, 1u)), ~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-9996i, -2147483647i, 18337i, 2147483647i), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(1i, -2147483647i, 2147483647i, 0i)), vec4<i32>(-58011i, 2147483647i, 0i, -33565i))), vec4<i32>(~(~(-44986i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(25409i, 2147483647i, 9702i, -36482i), vec4<i32>(-27731i, 2147483647i, 20749i, -66195i), vec4<i32>(1i, 38042i, 2147483647i, 2147483647i)), vec4<i32>(1i, -1i, 8379i, -22835i)), -1i, -(i32(-1i) * -38433i))));
    var var_1 = u_input.a;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec4_i32(~(firstLeadingBit(vec4<i32>(-1i, var_0.x, var_0.x, -1i)) << (select(vec4<u32>(29740u, u_input.a, 0u, 67001u) & vec4<u32>(0u, 0u, u_input.a, u_input.a), min(vec4<u32>(4294967295u, u_input.a, u_input.a, 26519u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u)), vec4<bool>(arg_0.b.x, var_2.d, true, false)) % vec4<u32>(32u))), -_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(var_0.x ^ var_0.x, var_0.x, var_0.x, 1i)));
    let var_4 = func_1();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)));
}

fn func_6(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: f32) -> bool {
    let var_0 = func_1();
    let var_1 = u_input.a;
    return all(!select(func_1().b, vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, false, var_0.e.x)), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), -597f, _wgslsmith_f_op_f32(-140f + -1299f), -1473f))) - vec4<f32>(_wgslsmith_f_op_f32(func_5(func_1())), -226f, _wgslsmith_f_op_f32(f32(-1f) * -225f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) * _wgslsmith_f_op_f32(floor(1849f))))), countOneBits(vec2<i32>(1i, _wgslsmith_clamp_i32(-2147483647i, -1i, -20614i) | -16235i)), _wgslsmith_f_op_f32(-1f));
    let var_1 = firstLeadingBit(~(~(~abs(vec2<u32>(4294967295u, 1u)))));
    let var_2 = var_0;
    var var_3 = var_0;
    let var_4 = vec4<u32>(max(_wgslsmith_mult_u32(43270u, u_input.a), ~(~_wgslsmith_sub_u32(var_1.x, 54523u))), _wgslsmith_div_u32(1u, ~reverseBits(_wgslsmith_mod_u32(0u, 28503u))), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), vec3<u32>(u_input.a, u_input.a, 0u)), abs(_wgslsmith_add_u32(0u, ~38028u))), var_1.x);
    var_3 = u_input.a == _wgslsmith_dot_vec2_u32(firstLeadingBit(var_4.wy), vec2<u32>(~(var_1.x << (var_4.x % 32u)), ~u_input.a));
    var var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-46523i, -1486i, 1594i, 24777i)), vec4<i32>(0i, -25437i, 15222i, 24604i)), -1i), _wgslsmith_sub_vec2_i32(~select(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(55181i, -16240i), vec2<i32>(-2147483647i, 1i)), !vec2<bool>(var_0, true)), vec2<i32>(1i, -(i32(-1i) * -7815i))));
    var var_6 = func_1();
    var_3 = _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(55807u, u_input.a), 61814u), 1u) == ~var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), ~(vec4<i32>(-57181i, 25850i, 28965i, 1i) << (vec4<u32>(4294967295u, var_1.x, var_4.x, var_1.x) % vec4<u32>(32u))))), -20362i, ~vec3<i32>(_wgslsmith_mult_i32(-11553i, countOneBits(69772i)), _wgslsmith_sub_i32(1i, 1i), -13376i), var_6.a);
}

