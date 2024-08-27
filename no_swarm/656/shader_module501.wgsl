struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~u_input.e.x;
    var var_1 = u_input.c;
    let var_2 = Struct_1(true, firstTrailingBit(_wgslsmith_clamp_vec4_i32(u_input.e, u_input.e, vec4<i32>(~(-2147483647i), u_input.e.x, -var_0, ~6880i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-879f, -186f, 722f, 181f) + vec4<f32>(-184f, 1841f, 1000f, 470f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1178f, -1520f, 1599f, -860f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-437f, 344f, 874f, -1408f) * vec4<f32>(-318f, -1991f, 874f, 312f)))), true && all(vec2<bool>(false, true))))));
    var var_3 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(u_input.e, ~(vec4<i32>(2147483647i, 24504i, -16148i, var_2.b.x) << (vec4<u32>(3932u, u_input.c, 52968u, 39552u) % vec4<u32>(32u))));
    var_3 = u_input.e ^ ~u_input.e;
    return select(!select(vec3<bool>(all(vec4<bool>(false, true, var_2.a, var_2.a)), true, all(vec3<bool>(var_2.a, var_2.a, var_2.a))), select(!vec3<bool>(true, var_2.a, true), select(vec3<bool>(var_2.a, true, false), vec3<bool>(true, false, var_2.a), vec3<bool>(true, true, var_2.a)), true), !select(vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true))), vec3<bool>(!(any(vec4<bool>(var_2.a, false, var_2.a, false)) || !var_2.a), true, select(false, any(vec3<bool>(false, var_2.a, var_2.a)) != true, false)), var_2.a);
}

fn func_2() -> bool {
    var var_0 = vec4<bool>(all(!func_3()), true, any(select(vec2<bool>(true, true), select(func_3().zx, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, true)), vec2<bool>(true, true))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))));
    let var_1 = Struct_1(var_0.x, ~abs(u_input.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1028f + -156f), _wgslsmith_f_op_f32(floor(-2467f)), _wgslsmith_f_op_f32(-287f * -1864f), -139f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, -303f, 2292f, 1000f) * vec4<f32>(-1459f, 1424f, 258f, 1526f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1761f, 852f, -147f, -553f), vec4<f32>(-439f, 197f, -961f, 2438f)))))));
    var var_2 = var_1;
    var_0 = select(!select(vec4<bool>(true & var_1.a, true, var_1.a && var_0.x, var_0.x), vec4<bool>(true, any(vec2<bool>(false, true)), 4294967295u < u_input.b, true), var_0.x), !(!select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_2.a, var_0.x, false, true), select(vec4<bool>(var_0.x, var_2.a, var_1.a, false), vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, false, var_2.a, true)))), all(select(vec3<bool>(var_1.b.x > 49254i, !var_2.a, true), var_0.ywy, var_0.zxy)));
    let var_3 = -1207f;
    return any(select(vec4<bool>(true, true, (var_2.a | var_0.x) | true, any(vec2<bool>(true, true))), !vec4<bool>(select(var_1.a, false, var_1.a), true, !var_1.a, !var_0.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = countOneBits(min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u) & ~vec2<u32>(46675u, 50084u), vec2<u32>(u_input.a, u_input.b) | ~vec2<u32>(0u, 30855u)), vec2<u32>(~(4294967295u << (u_input.d % 32u)), abs(firstTrailingBit(56260u)))));
    var var_1 = arg_0;
    var var_2 = Struct_1(arg_0.a, -(~vec4<i32>(u_input.e.x, arg_0.b.x, 830i, ~(-1i))), var_1.c);
    var var_3 = i32(-1i) * -1i;
    let var_4 = !(!(!(!select(vec2<bool>(false, var_2.a), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_2.a, true)))));
    return Struct_1(!(!(arg_0.b.x != -1i)), ~vec4<i32>(-var_1.b.x, _wgslsmith_div_i32(select(var_1.b.x, arg_0.b.x, true), _wgslsmith_dot_vec2_i32(var_2.b.zx, vec2<i32>(var_1.b.x, -1i))), arg_0.b.x & ~(-26533i), -(var_2.b.x & -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> u32 {
    let var_0 = select(!(!(!select(vec4<bool>(true, false, true, arg_0.a), vec4<bool>(arg_0.a, arg_1.x, true, arg_1.x), vec4<bool>(false, arg_1.x, true, arg_0.a)))), !vec4<bool>(any(!arg_1), arg_0.a, arg_0.c.x == -1228f, arg_0.a), vec4<bool>(!arg_0.a, !(~u_input.b < reverseBits(68262u)), !arg_0.a, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(arg_0.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.ww)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 859f), vec2<f32>(var_1.x, arg_0.c.x), true)), vec2<f32>(-1942f, arg_0.c.x), var_0.zw))))) + vec2<f32>(arg_0.c.x, func_4(Struct_1(all(var_0.yyw), firstLeadingBit(arg_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1872f, -511f) - var_1)), -1078f).c.x));
    var var_3 = arg_0.b.x;
    var var_4 = Struct_1(any(var_0.xzz), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-6588i, 1i, -u_input.e.x, i32(-1i) * -1i), -(arg_0.b | u_input.e)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, var_1.x), -315f))), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)))))), 1041f));
    return countOneBits(1u);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -476f)) < _wgslsmith_f_op_f32(-arg_0.c.x), -vec4<i32>(u_input.e.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, -25649i), vec2<i32>(-2147483647i, arg_0.b.x)), _wgslsmith_dot_vec2_i32(u_input.e.yw, vec2<i32>(-2147483647i, 1i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-43511i, -35290i), -1i), abs(arg_0.b.x) | -1i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-762f, 1235f, arg_0.c.x, -1550f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2200f, -1366f, 127f, 1000f) - arg_0.c)), vec4<f32>(_wgslsmith_f_op_f32(741f * arg_0.c.x), 103f, _wgslsmith_f_op_f32(min(1032f, 182f)), _wgslsmith_f_op_f32(-201f * -1090f))))));
    var_1 = arg_0;
    return reverseBits(func_5(func_4(Struct_1(func_2(), vec4<i32>(-2147483647i, arg_1.x, var_1.b.x, 5501i), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, 1000f, -545f) - var_1.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.c.x)))), vec2<bool>(select(select(false, false, arg_0.a), arg_0.a && arg_0.a, true), all(vec4<bool>(false, arg_0.a, var_1.a, true)) & true)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = func_4(func_4(Struct_1(true, vec4<i32>(u_input.e.x, u_input.e.x << (59332u % 32u), 43910i, -arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1909f, -1000f, -747f, -694f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-525f * _wgslsmith_f_op_f32(727f + 222f))))), _wgslsmith_f_op_f32(1f * 156f));
    var var_1 = firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(u_input.e.x), firstLeadingBit(_wgslsmith_div_i32(23334i, -20825i))), 26769i, max(u_input.e.x, -16296i), u_input.e.x));
    let var_2 = Struct_1(!var_0.a, _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 22289i), vec2<i32>(var_1.x, -18929i)), -u_input.e.x, 29604i)), u_input.e), func_4(func_4(var_0, -1568f), 605f).c);
    var var_3 = !vec2<bool>(func_3().x, arg_0.x == u_input.e.x);
    let var_4 = _wgslsmith_f_op_f32(abs(var_2.c.x));
    return var_2;
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_div_f32(-1459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = _wgslsmith_f_op_f32(abs(var_0.c.x));
    let var_3 = _wgslsmith_add_i32(-(~1i), arg_0);
    let var_4 = select(vec2<bool>(false, true), func_3().xz, any(!select(!vec4<bool>(arg_1.a, false, false, arg_1.a), vec4<bool>(false, var_0.a, true, true), vec4<bool>(false, true, arg_1.a, true))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(min(-2147483647i, u_input.e.x) >> (0u % 32u), func_6(-(~(~u_input.e.wwy)), vec3<bool>(func_1(Struct_1(false, u_input.e, vec4<f32>(-1763f, 1220f, -115f, -724f)), vec3<i32>(u_input.e.x, 0i, u_input.e.x), u_input.c, 0i) > abs(4294967295u), false, true), vec3<bool>(all(vec3<bool>(true, true, true)), select(true, false, u_input.e.x > u_input.e.x), all(vec3<bool>(true, false, true)))));
    var var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(21567i, i32(-1i) * -12580i), vec2<i32>(func_4(var_0, _wgslsmith_f_op_f32(-var_0.c.x)).b.x, _wgslsmith_mult_i32(i32(-1i) * -30924i, i32(-1i) * -1i))) >> (vec2<u32>(_wgslsmith_div_u32(abs(~40858u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.d, u_input.b, 68656u), vec4<u32>(u_input.a, 24382u, u_input.d, 20087u))), 1u) % vec2<u32>(32u));
    var var_2 = func_4(func_7(abs(-u_input.e.x), var_0), var_0.c.x);
    let var_3 = func_4(func_7(-var_0.b.x, func_6(vec3<i32>(2147483647i, 2956i, -2147483647i), func_3(), vec3<bool>(!var_0.a, false || var_0.a, true))), var_2.c.x);
    var_1 = vec2<i32>(max(~34651i, _wgslsmith_dot_vec4_i32(var_3.b, min(var_3.b, select(var_2.b, u_input.e, vec4<bool>(true, false, var_0.a, true))))), _wgslsmith_mod_i32(select(641i, _wgslsmith_div_i32(var_0.b.x, i32(-1i) * -2959i), var_3.a), 39519i));
    var_1 = abs(select(vec2<i32>(var_1.x, _wgslsmith_div_i32(u_input.e.x, 1i)) << ((~vec2<u32>(u_input.c, 0u) & vec2<u32>(0u, 1u)) % vec2<u32>(32u)), var_2.b.xw, select(select(select(vec2<bool>(var_2.a, var_0.a), vec2<bool>(var_2.a, false), false), select(vec2<bool>(var_2.a, var_0.a), vec2<bool>(var_2.a, var_2.a), var_0.a), vec2<bool>(true, true)), vec2<bool>(var_3.b.x <= var_1.x, !var_2.a), any(!vec3<bool>(var_0.a, var_2.a, var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(_wgslsmith_dot_vec4_i32(var_3.b, u_input.e) ^ _wgslsmith_sub_i32(var_3.b.x, -60024i)), 2147483647i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.b.x, var_2.b.x, var_3.b.x), vec3<i32>(var_0.b.x, -1i, 21592i) << (vec3<u32>(u_input.a, 37505u, u_input.c) % vec3<u32>(32u)), !vec3<bool>(false, false, var_0.a)), var_0.b.xyy), _wgslsmith_dot_vec4_i32(var_2.b, u_input.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_3.c.x), _wgslsmith_f_op_f32(var_3.c.x * var_3.c.x), _wgslsmith_f_op_f32(var_0.c.x - -523f), var_2.c.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_3.c, vec4<f32>(var_3.c.x, -1798f, var_0.c.x, -530f))), vec4<f32>(-1575f, _wgslsmith_f_op_f32(round(var_0.c.x)), var_3.c.x, var_3.c.x), !vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.a)))), func_7(2147483647i, var_0).c, func_4(Struct_1(true & var_3.a, vec4<i32>(-22873i, 2147483647i, _wgslsmith_mult_i32(var_3.b.x, var_2.b.x), abs(var_3.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, -781f, 168f, 1000f)), vec4<f32>(-329f, -330f, -1000f, var_3.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.x)))).b.x);
}

