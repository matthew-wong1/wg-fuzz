struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-24942i, 27475i, -23627i, -11143i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = 209f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(115f, -196f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(var_0, -758f)))), _wgslsmith_f_op_f32(f32(-1f) * -259f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(651f * var_0), _wgslsmith_f_op_f32(abs(-1152f)), var_0, 1269f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-593f, -1968f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-132f, 186f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-944f, -1569f))))), select(select(vec4<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(false, false, false)), false, select(false, true, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true)), !all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), true))));
    let var_2 = Struct_3(var_1, 33217u);
    global0 = abs(~u_input.b | u_input.b);
    var var_3 = -u_input.b.x;
    return var_2.b;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_1.b), vec2<u32>(arg_1.b, 4294967295u)) ^ _wgslsmith_mult_u32(14818u, arg_1.b)), arg_1.b));
    var_0 = abs(arg_1.b);
    var_0 = firstTrailingBit(arg_1.b);
    let var_1 = -1796f;
    return ~reverseBits(firstTrailingBit(abs(u_input.b.zww)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<i32> {
    global0 = min(u_input.b, vec4<i32>(u_input.a.x, _wgslsmith_clamp_i32(select(-24095i, global0.x, true), reverseBits(arg_1.x), global0.x), arg_1.x, ~_wgslsmith_clamp_i32(global0.x, global0.x, arg_1.x))) >> (vec4<u32>(~_wgslsmith_mod_u32(arg_0.x >> (arg_0.x % 32u), 38485u >> (arg_0.x % 32u)), arg_0.x, ~arg_0.x, 0u) % vec4<u32>(32u));
    global0 = vec4<i32>(2147483647i, global0.x, 17594i, 1i);
    let var_0 = arg_2;
    global0 = (u_input.b ^ reverseBits(_wgslsmith_add_vec4_i32(u_input.a | vec4<i32>(arg_1.x, arg_1.x, 0i, 2147483647i), vec4<i32>(3999i, 2147483647i, 2147483647i, u_input.a.x)))) << ((abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 0u) & vec4<u32>(4294967295u, 99365u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 36242u, 3669u, 19991u), _wgslsmith_div_vec4_u32(vec4<u32>(4893u, 1u, arg_0.x, arg_0.x), vec4<u32>(arg_0.x, 4294967295u, 4910u, arg_0.x)))) ^ vec4<u32>(reverseBits(reverseBits(arg_0.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), ~vec3<u32>(85613u, 62391u, 0u)), ~countOneBits(arg_0.x), arg_0.x)) % vec4<u32>(32u));
    let var_1 = -1i;
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: bool) -> f32 {
    global0 = func_5(~vec2<u32>(_wgslsmith_sub_u32(~2493u, 22985u), min(20763u, firstTrailingBit(1u))), -func_4(global0.x, Struct_3(Struct_1(vec4<f32>(-652f, arg_0, 218f, arg_0), vec2<f32>(arg_0, 449f), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), func_3()), vec4<bool>(true, arg_1, true, arg_1 | arg_1)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, 1000f, -1156f, 222f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -854f), -523f, 1000f, _wgslsmith_div_f32(2052f, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(arg_0, 517f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1637f) - vec2<f32>(arg_0, arg_0))))), select(!vec4<bool>(arg_1, arg_1, true, false), select(vec4<bool>(false, arg_1, arg_1, false), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), vec4<bool>(arg_1, false, arg_1, false)), select(!vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(false, arg_1, true, false), !vec4<bool>(arg_1, false, true, arg_1)))), true);
    global0 = u_input.b | -u_input.a;
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1757f, 1000f, arg_0, -1764f) * vec4<f32>(arg_0, arg_0, arg_0, 535f))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-842f, -603f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -1854f), vec2<f32>(-2143f, -817f))))))), vec4<bool>(all(!(!vec4<bool>(arg_1, false, true, true))), false, select(all(!vec3<bool>(true, arg_1, arg_1)), true, true), any(!(!vec3<bool>(true, false, arg_1)))));
    var var_1 = Struct_1(var_0.a, vec2<f32>(-3427f, _wgslsmith_f_op_f32(arg_0 * arg_0)), var_0.c);
    return _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1146f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(1512f - 1122f)))) + var_0.b.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_2 {
    return Struct_2(4294967295u, arg_3.a);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = func_6(firstTrailingBit(_wgslsmith_sub_vec4_i32(-u_input.b, countOneBits(vec4<i32>(55516i, u_input.a.x, arg_0.x, -22832i)))), ~vec4<u32>(_wgslsmith_mod_u32(4294967295u, 44974u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(22784u, 42417u)), ~1u, 1u >> (1u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-634f * _wgslsmith_f_op_f32(-266f - -114f)), -2601f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * -739f) * 1456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(962f)), true)) * -845f)), Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-420f, 1461f, -1758f, -362f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(859f, 1297f)))), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec3<bool>(true, false, true)), true, all(vec4<bool>(false, true, false, false))), vec4<bool>(any(vec2<bool>(true, true)), true, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true)), Struct_1(vec4<f32>(-2110f, 643f, _wgslsmith_f_op_f32(847f + 696f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(1309f, _wgslsmith_f_op_f32(f32(-1f) * -580f)), vec4<bool>(true, true, true, true)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = var_0.b.c.x;
    let var_2 = !func_6(vec4<i32>(1i, 65263i, -6047i ^ u_input.b.x, 52781i), ~vec4<u32>(var_0.a, 4294967295u, ~23680u, ~var_0.a), var_0.b.a, Struct_4(Struct_1(var_0.b.a, vec2<f32>(var_0.b.b.x, 725f), !vec4<bool>(var_0.b.c.x, var_0.b.c.x, var_0.b.c.x, var_0.b.c.x)), vec4<bool>(var_0.b.c.x, false, true, var_0.b.c.x), !select(var_0.b.c.xyw, vec3<bool>(var_0.b.c.x, true, var_0.b.c.x), var_0.b.c.yxx), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(840f, 1142f, var_0.b.a.x, 279f)), vec2<f32>(-585f, 220f), vec4<bool>(var_0.b.c.x, var_0.b.c.x, false, false)), ~(~vec4<u32>(23245u, var_0.a, 27177u, 1u)))).b.c.x;
    var var_3 = !vec3<bool>(var_2, true, 1251f >= var_0.b.b.x);
    var_0 = func_6(arg_0, _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(9812u, var_0.a, 34745u, var_0.a), vec4<u32>(1u, 43516u, 1u, var_0.a), var_0.b.c) << (vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_0.a, 4882u, 7095u), vec4<u32>(0u, 4294967295u, 44666u, 1433u))), vec4<u32>(1u, 8926u, ~var_0.a, var_0.a)), ~(~(vec4<u32>(4294967295u, 15638u, 47477u, var_0.a) & vec4<u32>(var_0.a, var_0.a, 19830u, 1u))), abs(select(~vec4<u32>(0u, var_0.a, var_0.a, var_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 0u, var_0.a, 1u), vec4<u32>(31735u, 32091u, var_0.a, 1u)), var_3.x))), vec4<f32>(-1666f, _wgslsmith_f_op_f32(2389f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + var_0.b.a.x) + _wgslsmith_f_op_f32(-443f - 303f))), _wgslsmith_f_op_f32(-1798f + var_0.b.a.x), var_0.b.a.x), Struct_4(func_6(u_input.a, ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, 1u, var_0.a, 1u), vec4<u32>(17629u, var_0.a, var_0.a, var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a)), Struct_4(var_0.b, !vec4<bool>(false, var_3.x, var_3.x, true), vec3<bool>(false, true, var_0.b.c.x), func_6(vec4<i32>(-29818i, -34616i, -2147483647i, arg_0.x), vec4<u32>(var_0.a, 4294967295u, 39336u, var_0.a), vec4<f32>(var_0.b.b.x, -1011f, var_0.b.a.x, var_0.b.b.x), Struct_4(var_0.b, var_0.b.c, vec3<bool>(true, var_3.x, var_3.x), var_0.b, vec4<u32>(var_0.a, var_0.a, var_0.a, 34075u))).b, abs(vec4<u32>(var_0.a, 1u, 1u, 28578u)))).b, !select(var_0.b.c, vec4<bool>(var_2, false, var_3.x, false), func_6(vec4<i32>(arg_0.x, 2147483647i, -24309i, u_input.a.x), vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a), vec4<f32>(-472f, var_0.b.b.x, var_0.b.a.x, var_0.b.b.x), Struct_4(Struct_1(var_0.b.a, vec2<f32>(var_0.b.a.x, 724f), var_0.b.c), vec4<bool>(var_3.x, false, var_2, var_3.x), var_0.b.c.xzy, Struct_1(var_0.b.a, var_0.b.b, vec4<bool>(var_2, true, var_2, true)), vec4<u32>(0u, 0u, 0u, 1u))).b.c), var_0.b.c.wxw, var_0.b, reverseBits(vec4<u32>(var_0.a, 82238u, 0u, ~1u))));
    return abs(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true & (true & (firstTrailingBit(~0u) <= _wgslsmith_mod_u32(func_1(u_input.b), _wgslsmith_mod_u32(0u, 1u))));
    let var_1 = vec3<u32>(1u, 1u, 1u);
    let var_2 = _wgslsmith_mult_i32(u_input.a.x, u_input.b.x);
    global0 = -vec4<i32>(-27685i, _wgslsmith_mult_i32(firstLeadingBit(func_4(global0.x, Struct_3(Struct_1(vec4<f32>(-1226f, 733f, 764f, 1000f), vec2<f32>(388f, 236f), vec4<bool>(false, true, false, var_0)), var_1.x), vec4<bool>(var_0, var_0, var_0, var_0)).x), -_wgslsmith_mult_i32(var_2, 3027i)), ~func_4(~var_2, Struct_3(Struct_1(vec4<f32>(-1357f, 1247f, -1196f, 1269f), vec2<f32>(890f, -1841f), vec4<bool>(false, true, false, var_0)), 71314u), vec4<bool>(true, true, var_0, var_0)).x, _wgslsmith_add_i32(-(~var_2), ~(~var_2)));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2912f, -1978f, 672f, _wgslsmith_f_op_f32(max(-153f, 1894f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(757f, -862f, 528f, 2467f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, 335f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-275f, 900f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1619f, 1149f)))), !select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(true, true, var_0, false), !vec4<bool>(var_0, false, var_0, true))), _wgslsmith_dot_vec4_u32(select(vec4<u32>(min(1u, var_1.x), ~var_1.x, 39768u, 31725u), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 80993u, 0u, var_1.x), vec4<u32>(1u, var_1.x, var_1.x, var_1.x)) & ~vec4<u32>(62267u, 0u, var_1.x, var_1.x), true), ~max(vec4<u32>(var_1.x, 8847u, 38359u, var_1.x), firstLeadingBit(vec4<u32>(1u, 86841u, 4294967295u, var_1.x)))));
    global0 = -vec4<i32>(-_wgslsmith_dot_vec3_i32(-u_input.a.zxy, u_input.a.wyy | global0.wxx), -41565i, var_2, abs(-2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1046f))), true))));
}

