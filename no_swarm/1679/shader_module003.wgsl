struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: u32,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(abs(arg_0.x));
    let var_1 = arg_1.a;
    let var_2 = arg_1;
    let var_3 = arg_1;
    let var_4 = Struct_2(any(!vec3<bool>(any(vec4<bool>(var_3.b.x, arg_1.b.x, arg_1.b.x, var_3.b.x)), true & arg_1.b.x, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) * arg_0.x), -2048f, -457f, arg_0.x), firstLeadingBit(vec4<i32>(-(2147483647i | var_2.a), -1i, abs(1i), ~_wgslsmith_clamp_i32(var_2.a, -2147483647i, var_2.a))), var_0);
    return var_2.a;
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(func_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b), _wgslsmith_f_op_vec4_f32(-arg_0.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1005f, 253f, -346f, arg_0.b.x), vec4<f32>(758f, -902f, 1579f, arg_0.d))), arg_0.b))), Struct_1(i32(-1i) * -arg_0.c.x, select(vec3<bool>(arg_0.a, false, true), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.a, false, true), arg_0.a), true), ~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 52559u)))), !(!vec3<bool>(any(vec3<bool>(arg_0.a, arg_0.a, true)), arg_0.a & false, true)), 1u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1045f, -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.d)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(719f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-800f)) + -418f);
    var var_3 = -3408i;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b.x)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, _wgslsmith_f_op_f32(max(447f, _wgslsmith_f_op_f32(max(-1596f, arg_0.d)))), -1679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -380f, _wgslsmith_f_op_f32(max(-506f, 2538f)), _wgslsmith_f_op_f32(f32(-1f) * -811f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b))))));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(!(!any(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -460f, -1417f, 415f))), vec4<f32>(_wgslsmith_f_op_f32(max(535f, 256f)), _wgslsmith_f_op_f32(-603f - -480f), 1131f, _wgslsmith_f_op_f32(f32(-1f) * -397f)))), vec4<i32>(1i, -1i, func_3(vec4<f32>(1659f, -592f, -376f, 888f), Struct_1(0i, vec3<bool>(false, true, true), 0u)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(70039i, 15133i, -9065i, 2147483647i), vec4<i32>(-29634i, 1i, 20488i, 8754i)), 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)))));
    var var_1 = vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, all(vec2<bool>(true, true))), true)), false, true);
    let var_2 = Struct_2(true, vec4<f32>(1906f, _wgslsmith_f_op_f32(222f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) + 489f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), 387f)), _wgslsmith_div_vec4_i32(vec4<i32>(-(i32(-1i) * -1i), 1i, -14439i, -6044i), abs(vec4<i32>(1i, 1i, 1i, 1i))), var_0.x);
    var_1 = vec3<bool>(false, true && select(select(var_2.a, !var_2.a, true), true | !var_2.a, false), (4294967295u < (~1u | ~u_input.a.x)) && false);
    var var_3 = Struct_1(min(1i, 32890i), select(!(!(!vec3<bool>(true, true, var_2.a))), !vec3<bool>(true, var_2.a, var_2.c.x != 15603i), var_1.x), u_input.a.x);
    return 896f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = vec4<u32>(1u, ~75427u, 0u, _wgslsmith_mod_u32(arg_2, arg_2));
    let var_1 = arg_1.d;
    var var_2 = Struct_2(arg_0.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, -1046f, var_1, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(abs(-497f)))))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(33503i, abs(0i)), vec2<i32>(-arg_0.a, ~(-2147483647i))), _wgslsmith_dot_vec4_i32(arg_1.c, arg_1.c), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 2147483647i, 0i, arg_0.a), -(arg_1.c >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_mult_i32(-11949i, _wgslsmith_dot_vec4_i32(~arg_1.c, -vec4<i32>(arg_1.c.x, 17756i, 7268i, arg_0.a)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2()))))));
    var var_3 = all(vec3<bool>(!select(true & arg_1.a, arg_0.b.x && true, true), all(select(vec2<bool>(var_2.a, false), select(vec2<bool>(arg_0.b.x, var_2.a), vec2<bool>(arg_0.b.x, var_2.a), arg_0.b.zy), true)), false));
    var_0 = vec4<u32>(95026u, ~(~48304u), abs(_wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, arg_2, 1u, 0u)), vec4<u32>(18410u, 44192u & var_0.x, select(u_input.a.x, 5424u, arg_3), select(arg_0.c, var_0.x, arg_0.b.x)))), ~_wgslsmith_div_u32(firstTrailingBit(abs(35656u)), 6799u));
    return arg_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(!arg_2.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 327f, 320f, arg_0.x), vec4<f32>(arg_0.x, 226f, arg_0.x, arg_0.x)) * vec4<f32>(arg_0.x, -167f, -740f, 172f)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-146f * 3246f), _wgslsmith_div_f32(arg_0.x, 1000f), -154f)))), -(~firstTrailingBit(vec4<i32>(2147483647i, 1i, -1i, arg_2.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, 932f))))));
    let var_1 = abs(abs(4294967295u));
    var var_2 = Struct_1(~(-arg_2.a), arg_1.xwz, ~_wgslsmith_clamp_u32(firstLeadingBit(~55137u), var_1, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(0u, 15414u), 4294967295u)));
    var var_3 = vec2<f32>(1839f, var_0.b.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-445f - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1806f, var_3.x)))))));
    return var_0;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    let var_0 = func_1(Struct_1(~arg_2.a, !(!(!arg_2.b)), 0u), func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-701f + -150f), _wgslsmith_f_op_f32(-136f - arg_1.b.x)))), select(vec4<bool>(true, true, !arg_2.b.x, arg_3 >= arg_0.a), select(!vec4<bool>(true, arg_0.b.x, arg_0.b.x, true), select(vec4<bool>(false, arg_0.b.x, true, arg_2.b.x), vec4<bool>(false, false, false, arg_1.a), vec4<bool>(false, arg_2.b.x, true, arg_2.b.x)), select(vec4<bool>(arg_1.a, arg_2.b.x, arg_1.a, false), vec4<bool>(arg_0.b.x, true, true, false), false)), true), arg_0), _wgslsmith_mod_u32(func_1(func_1(func_1(arg_2, arg_1, 0u, arg_0.b.x), arg_1, arg_0.c, any(vec3<bool>(true, arg_2.b.x, arg_2.b.x))), arg_1, u_input.a.x, true).c, u_input.a.x), true);
    let var_1 = !arg_1.a;
    let var_2 = func_1(Struct_1(-(~_wgslsmith_mod_i32(-34974i, 2147483647i)), arg_2.b, arg_0.c), arg_1, ~(~(~_wgslsmith_div_u32(arg_0.c, 4294967295u))), true);
    var var_3 = true;
    let var_4 = true;
    return _wgslsmith_clamp_vec3_u32(firstTrailingBit(max(u_input.a.wxx, ~u_input.a.wzz)), u_input.a.zww, u_input.a.zyz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec3<i32>(~497i, -20526i, 1i) >> (func_6(Struct_1(abs(-37835i), vec3<bool>(true, true, false), 1u), func_5(_wgslsmith_div_vec2_f32(vec2<f32>(1441f, -1000f), vec2<f32>(-994f, 776f)), vec4<bool>(true, true, true, true), func_1(Struct_1(32941i, vec3<bool>(false, false, true), u_input.a.x), Struct_2(true, vec4<f32>(-2179f, -138f, 539f, 2216f), vec4<i32>(-2147483647i, 31268i, 11641i, 2147483647i), -488f), u_input.a.x, true)), Struct_1(1i, select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), u_input.a.x), _wgslsmith_mod_i32(2147483647i >> (u_input.a.x % 32u), -41402i)) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(select(-224f, _wgslsmith_f_op_f32(219f * -1027f), true))) + func_5(vec2<f32>(_wgslsmith_f_op_f32(func_2()), -942f), vec4<bool>(true, true, true, true), func_1(Struct_1(var_0.x, vec3<bool>(false, true, false), 68338u), func_5(vec2<f32>(1000f, 481f), vec4<bool>(false, false, true, false), Struct_1(-19652i, vec3<bool>(false, true, false), 0u)), ~u_input.a.x, true)).b.wx));
    let var_2 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(24724u, u_input.a.x), ~u_input.a.x, 1u)), ~u_input.a) ^ reverseBits(~(~u_input.a.x));
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1146f)) - var_1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, var_1.x, 2556f))) - vec3<f32>(131f, var_1.x, 328f)) - vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, var_1.x)))));
    let var_4 = max(-vec3<i32>(var_0.x, max(2147483647i, var_0.x), -2147483647i), ~vec3<i32>(1168i, ~var_0.x, firstTrailingBit(var_0.x)) | vec3<i32>(var_0.x, _wgslsmith_clamp_i32(-var_0.x, 2147483647i, var_0.x), 25087i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(~1u, max(0u << (var_2 % 32u), _wgslsmith_sub_u32(var_2, 30649u)), ~var_2, ~countOneBits(u_input.a.x)), _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(1u, var_2, var_2, u_input.a.x)), min(countOneBits(vec4<u32>(1u, 0u, u_input.a.x, var_2)), countOneBits(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f)), _wgslsmith_f_op_f32(f32(-1f) * -1329f), -1945f, _wgslsmith_f_op_f32(-var_1.x)), firstLeadingBit(~vec3<u32>(0u, 32060u, u_input.a.x)), var_2);
}

