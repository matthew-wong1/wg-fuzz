struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(1u ^ u_input.a, Struct_2(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(702f)) > _wgslsmith_f_op_f32(step(-266f, 1956f))), _wgslsmith_f_op_f32(abs(1941f)), Struct_1(29653i), Struct_1(-(i32(-1i) * -38823i))));
    var_0 = Struct_3(u_input.a, var_0.b);
    var_0 = Struct_3(firstLeadingBit(~reverseBits(abs(4294967295u))), var_0.b);
    var_0 = Struct_3(~(~(~var_0.a)), Struct_2(select(select(vec2<bool>(false, var_0.b.a.x), select(vec2<bool>(var_0.b.a.x, true), var_0.b.a, var_0.b.a.x), false), vec2<bool>(any(vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), true), var_0.b.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-160f)) - var_0.b.b), Struct_1(32778i), var_0.b.d));
    var_0 = Struct_3(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_0.a, u_input.a, var_0.a), ~vec4<u32>(var_0.a, var_0.a, u_input.a, 0u)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, var_0.a, 4294967295u, u_input.a)))), Struct_2(!(!vec2<bool>(false, var_0.b.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b) + _wgslsmith_f_op_f32(var_0.b.b - var_0.b.b)))), var_0.b.c, Struct_1(var_0.b.c.a)));
    return var_0.b.c.a;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<bool>(true, true), -1158f, Struct_1(func_3()), Struct_1(1i));
    var var_1 = ~(u_input.a >> (u_input.a % 32u));
    var var_2 = vec2<i32>(var_0.c.a, func_3());
    var_1 = u_input.a;
    let var_3 = arg_0;
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(~((2147483647i | arg_0.a) << (firstTrailingBit(4294967295u) % 32u)), arg_0.a), _wgslsmith_add_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.d.a, -42163i), vec2<i32>(arg_2.d.a, 13038i))), -vec2<i32>(arg_1.a, -arg_0.a)));
    let var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u) << (~vec4<u32>(22099u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a, u_input.a, 768u, 4294967295u) | vec4<u32>(40927u, 7893u, u_input.a, u_input.a))) << (abs(~_wgslsmith_mult_u32(u_input.a, 27846u)) % 32u), Struct_2(!select(select(arg_2.a, vec2<bool>(true, arg_2.a.x), arg_2.a.x), arg_2.a, any(vec4<bool>(arg_2.a.x, true, arg_2.a.x, true))), arg_2.b, arg_0, func_2(~vec3<i32>(-2594i, arg_1.a, arg_0.a))));
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.b, -592f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b), 493f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-274f, 535f, arg_2.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-537f, 319f, -811f))), select(vec3<bool>(var_1.b.a.x, false, true), vec3<bool>(arg_2.a.x, var_1.b.a.x, false), vec3<bool>(false, var_1.b.a.x, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1468f, var_1.b.b, 457f) - vec3<f32>(-2055f, arg_2.b, 957f))))) * vec3<f32>(_wgslsmith_f_op_f32(min(arg_2.b, arg_2.b)), var_1.b.b, -1014f))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-676f + _wgslsmith_f_op_f32(floor(var_1.b.b))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - _wgslsmith_f_op_f32(step(-113f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b.b - 1142f)))))));
    return Struct_3(var_1.a & 75326u, Struct_2(vec2<bool>(false, arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, arg_2.b)))), func_2(vec3<i32>(var_0.x, min(-1i, arg_2.c.a), abs(arg_1.a))), func_2(-vec3<i32>(arg_2.c.a, 4003i, var_0.x))));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = func_4(func_2(-vec3<i32>(-31811i, -2108i, i32(-1i) * -2147483647i)), func_2(-vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-48499i, -2147483647i, 17815i), vec3<i32>(4653i, 1i, 2147483647i)))), Struct_2(vec2<bool>(arg_0, false), -1000f, Struct_1(-(~0i)), func_2(vec3<i32>(min(4342i, 32282i), i32(-1i) * -1i, _wgslsmith_div_i32(-2147483647i, -2147483647i)))));
    var var_1 = firstTrailingBit(reverseBits(firstTrailingBit(vec2<u32>(var_0.a, 4294967295u) ^ ~vec2<u32>(u_input.a, 32042u))));
    var var_2 = func_4(var_0.b.c, Struct_1(select(-2147483647i, ~func_3(), var_0.b.a.x)), var_0.b);
    var var_3 = var_2.a;
    var_1 = vec2<u32>(var_2.a, abs(_wgslsmith_sub_u32(var_2.a, abs(abs(var_0.a)))));
    return select(!(!vec3<bool>(var_0.b.b > var_2.b.b, var_0.b.a.x && true, true)), vec3<bool>(var_2.b.a.x, any(vec3<bool>(true, var_2.a <= u_input.a, 4294967295u >= u_input.a)), var_0.a > u_input.a), vec3<bool>(all(vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), any(vec2<bool>(true, true)), any(vec2<bool>(!var_2.b.a.x, false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = func_4(func_4(arg_2, arg_2, Struct_2(vec2<bool>(!arg_3.b.a.x, !arg_0.x), 779f, arg_2, Struct_1(-63058i))).b.d, func_2(~(vec3<i32>(-1i, arg_2.a, -1i) << (select(vec3<u32>(4294967295u, 0u, arg_3.a), vec3<u32>(u_input.a, arg_1, 1u), arg_3.b.a.x) % vec3<u32>(32u)))), arg_3.b).b;
    let var_1 = Struct_1(0i);
    let var_2 = -arg_3.b.c.a;
    let var_3 = vec3<u32>(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, 1u)), ~vec2<u32>(arg_1, u_input.a) | select(vec2<u32>(4294967295u, arg_3.a), vec2<u32>(arg_3.a, arg_1), vec2<bool>(arg_3.b.a.x, var_0.a.x))), _wgslsmith_clamp_u32(arg_3.a, ~max(36603u, 0u), _wgslsmith_sub_u32(func_4(Struct_1(2147483647i), arg_3.b.d, Struct_2(vec2<bool>(arg_0.x, var_0.a.x), -738f, Struct_1(var_1.a), Struct_1(-22709i))).a, _wgslsmith_clamp_u32(69996u, 1u, 1u))) ^ arg_1, arg_1);
    var var_4 = select(false, func_1(false).x, any(func_1(var_0.a.x)));
    return arg_3.b.d;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = countOneBits(vec4<i32>(20551i, ~(-arg_1.a), -arg_1.a, -(~(-17037i))) & (((vec4<i32>(arg_1.a, -2147483647i, arg_1.a, -9824i) | vec4<i32>(arg_1.a, -39193i, arg_1.a, arg_1.a)) << (~vec4<u32>(arg_0.x, 1u, 4294967295u, 1u) % vec4<u32>(32u))) & -vec4<i32>(1i, -2147483647i, arg_1.a, arg_1.a)));
    var var_1 = ~arg_0;
    var_1 = arg_0;
    let var_2 = var_1.xw;
    var_1 = _wgslsmith_add_vec4_u32(countOneBits(arg_0) ^ select(abs(~arg_0), ~(~vec4<u32>(45065u, var_2.x, arg_0.x, arg_0.x)), select(arg_2, arg_2, false)), reverseBits(~vec4<u32>(var_2.x, 0u | arg_0.x, ~u_input.a, arg_0.x)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-24603i);
    let var_1 = -125f;
    var_0 = func_6(~vec4<u32>(abs(~0u), _wgslsmith_add_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a)), ~(~u_input.a), u_input.a), func_5(select(!func_1(true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), !any(vec2<bool>(true, false))), 0u, func_2(-vec3<i32>(var_0.a, var_0.a, var_0.a)), Struct_3(u_input.a, Struct_2(vec2<bool>(true, true), -133f, Struct_1(2147483647i), func_4(Struct_1(54232i), Struct_1(-31012i), Struct_2(vec2<bool>(false, false), -307f, Struct_1(var_0.a), Struct_1(-52835i))).b.d))), !select(vec4<bool>(all(vec4<bool>(true, true, true, false)), any(vec3<bool>(false, false, false)), true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), -270f);
    var var_2 = firstLeadingBit(_wgslsmith_mod_i32(~(func_5(vec3<bool>(true, false, false), 111466u, Struct_1(1i), Struct_3(24110u, Struct_2(vec2<bool>(true, false), var_1, Struct_1(var_0.a), Struct_1(-2147483647i)))).a ^ _wgslsmith_mod_i32(-1i, var_0.a)), -37486i >> (firstTrailingBit(1u) % 32u)));
    let var_3 = _wgslsmith_mult_u32(~u_input.a, u_input.a);
    let var_4 = vec2<u32>(61771u, reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_3, 12693u), 1u ^ _wgslsmith_add_u32(var_3, 0u))));
    var_0 = func_4(func_6(_wgslsmith_sub_vec4_u32(vec4<u32>(var_4.x, ~var_4.x, abs(var_4.x), func_4(Struct_1(19353i), Struct_1(var_0.a), Struct_2(vec2<bool>(true, true), var_1, Struct_1(var_0.a), Struct_1(-1i))).a), ~(~vec4<u32>(var_3, 1u, var_4.x, 0u))), func_6(~min(vec4<u32>(55702u, 0u, 4294967295u, 4294967295u), vec4<u32>(15656u, 1u, u_input.a, 4294967295u)), Struct_1(-15428i & var_0.a), vec4<bool>(true, func_4(Struct_1(var_0.a), Struct_1(var_0.a), Struct_2(vec2<bool>(true, false), var_1, Struct_1(0i), Struct_1(2147483647i))).b.a.x, select(true, true, false), true), _wgslsmith_f_op_f32(-var_1)), vec4<bool>(-1214f < _wgslsmith_f_op_f32(-366f + var_1), !all(vec4<bool>(true, false, true, true)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(floor(299f))))), Struct_1(var_0.a), func_4(Struct_1(-2147483647i), func_6(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_3, u_input.a, var_4.x, 0u), vec4<u32>(u_input.a, 0u, var_4.x, var_4.x)), func_6(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_4.x, 4294967295u, 1u), vec4<u32>(var_3, u_input.a, var_4.x, var_4.x)), func_6(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), Struct_1(1i), vec4<bool>(true, true, false, false), var_1), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)), func_4(Struct_1(var_0.a), Struct_1(var_0.a), Struct_2(vec2<bool>(false, false), var_1, Struct_1(1i), Struct_1(var_0.a))).b.b), vec4<bool>(true, true, true, var_3 >= 17053u), -1699f), func_4(Struct_1(~var_0.a), Struct_1(1i), Struct_2(vec2<bool>(true, false), var_1, func_5(vec3<bool>(false, true, false), u_input.a, Struct_1(19033i), Struct_3(1u, Struct_2(vec2<bool>(false, true), -413f, Struct_1(-3973i), Struct_1(-1i)))), Struct_1(0i))).b).b).b.d;
    var_0 = func_4(Struct_1(-46135i), func_6(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(83348u, u_input.a, 4294967295u, 0u), vec4<u32>(4294967295u, var_4.x, u_input.a, u_input.a), vec4<bool>(false, true, false, true)), vec4<u32>(2120u, 9862u, 27033u, 16112u)), select(vec4<u32>(var_3, 1u, 1u, var_4.x), vec4<u32>(7594u, u_input.a, u_input.a, var_4.x), vec4<bool>(true, false, false, false)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_4.x, var_3, 0u, var_4.x), vec4<u32>(var_4.x, u_input.a, var_3, var_4.x)) % vec4<u32>(32u))), func_2(max(vec3<i32>(-24528i, var_0.a, var_0.a), vec3<i32>(var_0.a, -6628i, -1i) << (vec3<u32>(u_input.a, 1u, var_3) % vec3<u32>(32u)))), vec4<bool>(true, false, true != any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1, 1546f)), _wgslsmith_f_op_f32(f32(-1f) * -250f), 77614u <= var_4.x)))), func_4(func_6(abs(~vec4<u32>(1u, 78964u, 1u, 17289u)), func_4(func_5(vec3<bool>(false, true, true), 0u, Struct_1(var_0.a), Struct_3(1u, Struct_2(vec2<bool>(false, true), var_1, Struct_1(var_0.a), Struct_1(var_0.a)))), func_5(vec3<bool>(true, false, true), 4294967295u, Struct_1(73478i), Struct_3(var_4.x, Struct_2(vec2<bool>(false, false), var_1, Struct_1(10330i), Struct_1(-2147483647i)))), Struct_2(vec2<bool>(true, false), var_1, Struct_1(var_0.a), Struct_1(var_0.a))).b.c, select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), var_1), Struct_1(var_0.a), func_4(Struct_1(var_0.a), Struct_1(var_0.a), Struct_2(func_1(true).xz, _wgslsmith_f_op_f32(f32(-1f) * -828f), func_5(vec3<bool>(true, true, true), 3835u, Struct_1(-2147483647i), Struct_3(u_input.a, Struct_2(vec2<bool>(false, false), var_1, Struct_1(26733i), Struct_1(-1i)))), func_5(vec3<bool>(false, true, false), var_4.x, Struct_1(var_0.a), Struct_3(var_4.x, Struct_2(vec2<bool>(true, true), var_1, Struct_1(var_0.a), Struct_1(0i)))))).b).b).b.c;
    var_0 = func_4(func_4(func_6(_wgslsmith_add_vec4_u32(vec4<u32>(58494u, u_input.a, u_input.a, 73746u), _wgslsmith_add_vec4_u32(vec4<u32>(44894u, u_input.a, 21973u, 0u), vec4<u32>(var_3, 0u, 4294967295u, 50529u))), func_4(Struct_1(1i), Struct_1(-12592i), func_4(Struct_1(var_0.a), Struct_1(0i), Struct_2(vec2<bool>(true, false), var_1, Struct_1(-18896i), Struct_1(var_0.a))).b).b.d, vec4<bool>(false, all(vec4<bool>(false, false, true, true)), true, true), _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(435f + var_1), true))), func_5(vec3<bool>(true, true, true), 26705u, Struct_1(-35647i), Struct_3(0u, Struct_2(vec2<bool>(true, true), var_1, Struct_1(-36499i), Struct_1(var_0.a)))), func_4(func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_0.a, var_0.a), vec3<i32>(var_0.a, var_0.a, var_0.a), vec3<i32>(var_0.a, -11735i, 36343i))), Struct_1(func_5(vec3<bool>(false, true, false), u_input.a, Struct_1(0i), Struct_3(1u, Struct_2(vec2<bool>(true, true), var_1, Struct_1(var_0.a), Struct_1(-2147483647i)))).a), Struct_2(vec2<bool>(true, false), var_1, Struct_1(0i), Struct_1(2147483647i))).b).b.d, func_5(!func_1(true), ~(~_wgslsmith_sub_u32(45811u, var_3)), Struct_1(31038i), Struct_3(~(~1u), Struct_2(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), var_1, Struct_1(1i), func_6(vec4<u32>(48038u, var_3, u_input.a, 68180u), Struct_1(var_0.a), vec4<bool>(true, true, true, true), var_1)))), Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -505f), func_5(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), select(1u, 1u, any(vec4<bool>(false, true, true, true))), Struct_1(-1i), Struct_3(var_4.x, func_4(Struct_1(-31248i), Struct_1(0i), Struct_2(vec2<bool>(false, true), 218f, Struct_1(var_0.a), Struct_1(var_0.a))).b)), func_2(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, var_0.a, 28586i), vec3<i32>(var_0.a, var_0.a, var_0.a)), vec3<i32>(-15198i, var_0.a, 2147483647i), func_1(false))))).b.c;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(84861u)), vec4<i32>(~(~(-10209i)), abs(~var_0.a), var_0.a, _wgslsmith_add_i32(var_0.a, var_0.a)), ~(-45039i));
}

