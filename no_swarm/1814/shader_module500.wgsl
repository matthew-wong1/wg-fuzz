struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    return vec4<bool>(true == any(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), select(!select(false, false, true) && true, true, true), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)), any(vec2<bool>(true, true)));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec3_i32(select(select(vec3<i32>(u_input.b, 61935i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, -30059i), vec3<i32>(u_input.b, u_input.b, -1751i), vec3<i32>(u_input.b, 1i, u_input.a.x)), false), max(vec3<i32>(u_input.b, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, false), any(vec4<bool>(true, false, false, true)))), vec3<i32>(firstTrailingBit(u_input.a.x), max(12678i, u_input.a.x), _wgslsmith_clamp_i32(-1i, 1i, 0i)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -948f) - _wgslsmith_f_op_f32(125f + -658f)), -360f, any(vec4<bool>(true, false, true, true)) == true)), _wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(419f, -633f))))), select(vec3<bool>(true, false, true), vec3<bool>(true & all(vec3<bool>(false, false, true)), true, any(vec4<bool>(true, true, false, false))), !vec3<bool>(true, select(true, true, true), true)), -376f);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.b.x)));
    var var_2 = ~vec2<u32>(~(~1u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(14650u, 142993u)), vec2<u32>(42612u, 36863u)));
    var var_3 = var_0;
    var var_4 = _wgslsmith_f_op_f32(-1f);
    return _wgslsmith_div_vec4_i32(vec4<i32>(abs(reverseBits(var_0.a.x)), ~max(11877i, _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(46628i, var_3.a.x, var_3.a.x))), var_0.a.x, ~_wgslsmith_add_i32(min(var_0.a.x, var_0.a.x), u_input.b)), firstTrailingBit(reverseBits(abs(vec4<i32>(var_0.a.x, 50210i, -2147483647i, 1i))) | _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 1i, -1i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, 39874i, var_3.a.x), vec4<i32>(var_3.a.x, var_3.a.x, 0i, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-77424i, u_input.b, 50131i, var_0.a.x), vec4<i32>(-42206i, var_0.a.x, var_0.a.x, -1i)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = ~4294967295u;
    let var_1 = arg_2.x;
    let var_2 = -vec4<i32>(~((u_input.b >> (3110u % 32u)) << (~58336u % 32u)), ~(~u_input.b), -2147483647i, firstTrailingBit(~2147483647i));
    let var_3 = _wgslsmith_mult_vec4_i32(-var_2 & func_3(), (-_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, var_2.x, 1i), var_2) & var_2) >> (vec4<u32>(var_1, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 0u, var_1), vec3<u32>(0u, 41695u, var_1)) & var_0, arg_2.x, var_0) % vec4<u32>(32u)));
    var var_4 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-578f, 1694f)), -3686f, all(vec3<bool>(arg_0.x, arg_3.x, arg_1))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1380f)), 1f))))).x;
    return Struct_1(var_3.xxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-541f, 423f, -923f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-578f, -651f, 1632f))))), !arg_0.xwy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + -740f), -223f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = 1547f;
    var var_1 = 423f;
    let var_2 = arg_0.c;
    return !(arg_3 >= arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(func_2(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), -4754i <= u_input.b), (u_input.a.x >> (28790u % 32u)) > -2147483647i, ~_wgslsmith_div_vec2_u32(vec2<u32>(3140u, 0u), vec2<u32>(4294967295u, 4294967295u)), !func_1(781f)), vec2<bool>(true, (-572i <= u_input.b) && select(true, false, true)), func_2(vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, true, false)), vec2<u32>(1u, 1u), vec4<bool>(true, false, true, all(vec2<bool>(false, false)))), ~select(1u, 1u, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(907f, 252f, -241f))) - vec3<f32>(1f, 1f, 1f))) * func_2(vec4<bool>(any(vec3<bool>(var_0, false, false)), var_0 && true, func_1(254f).x, true), true, abs(vec2<u32>(11451u, 4294967295u)), vec4<bool>(true, true, var_0, any(vec4<bool>(true, var_0, true, false)))).b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(687f, 497f) * _wgslsmith_f_op_f32(158f * -205f)), -659f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1388f, -803f, var_0)), -493f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-492f, 1027f), _wgslsmith_f_op_f32(f32(-1f) * -356f), 1f) - _wgslsmith_f_op_vec3_f32(func_2(vec4<bool>(false, var_0, false, true), var_0, vec2<u32>(56523u, 0u), vec4<bool>(true, true, true, true)).b + vec3<f32>(-1322f, 710f, 651f))))));
    let var_2 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mult_u32(max(~9928u, 36953u), firstTrailingBit(98834u)), select(~7228u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(26558u, 57315u), reverseBits(53583u), 1u), true)));
    var var_3 = var_0;
    var_3 = all(func_2(vec4<bool>(!(!var_0), true, false, true), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2, 0u, var_2), vec3<u32>(38691u, 54404u, var_2)), reverseBits(vec3<u32>(var_2, 25227u, 1u))) <= 15892u, _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(568u, 3908u), vec2<u32>(var_2, var_2)), countOneBits(vec2<u32>(38364u, var_2))), vec4<bool>(var_0, var_0, false, func_1(_wgslsmith_f_op_f32(max(698f, var_1.x))).x)).c);
    let var_4 = Struct_1(reverseBits(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(10427i, u_input.a.x, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b))) & vec3<i32>(~u_input.b, 25914i, -u_input.b)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(var_1.x, -1000f)), -1453f, var_1.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - var_1)))))), vec3<bool>(var_0 != !func_1(var_1.x).x, var_0 & func_4(func_2(vec4<bool>(var_0, true, true, var_0), true, vec2<u32>(var_2, var_2), vec4<bool>(var_0, true, var_0, var_0)), vec2<bool>(var_0, var_0), func_2(vec4<bool>(var_0, false, var_0, true), var_0, vec2<u32>(0u, var_2), vec4<bool>(var_0, false, var_0, var_0)), ~1u), true), _wgslsmith_f_op_f32(-1586f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.x, 448f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-888f, 398f)) + -1210f))));
    let var_5 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_4.b * vec3<f32>(var_1.x, var_4.b.x, var_1.x))), var_4.b, !(!var_4.c)))))));
    let var_6 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.b.x, -1000f, var_1.x) * var_4.b)))) + func_2(func_1(var_1.x), !any(vec4<bool>(true, false, false, true)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, var_2), vec2<u32>(var_2, var_2), var_0), vec2<u32>(var_2, 4294967295u)), !vec4<bool>(var_4.c.x, var_0, false, var_4.c.x)).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-firstTrailingBit(var_4.a.x), 52881i, _wgslsmith_mult_i32(var_4.a.x, 2147483647i), -17163i), -firstTrailingBit(-vec4<i32>(var_4.a.x, u_input.b, u_input.b, 4283i))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_4.a.x, var_4.a.x << (var_2 % 32u)), ~u_input.a.x), max(var_4.a.zy, vec2<i32>(-1i) * -u_input.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -285f), var_1.x), var_4.b.yy, all(var_4.c.xx)))));
}

