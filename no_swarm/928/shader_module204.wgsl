struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1531f, -1173f, -998f, -244f)) * vec4<f32>(2228f, -248f, -1579f, -311f)))))));
    let var_1 = Struct_1(vec3<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), !(firstLeadingBit(u_input.b.x) <= ~(-17189i))), _wgslsmith_mult_u32(1u, ~(~0u)) != _wgslsmith_div_u32(_wgslsmith_add_u32(select(arg_2.x, u_input.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(6851u, arg_2.x), arg_2.wy)), abs(min(6138u, 1u))), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))), any(vec4<bool>(true, false, false, true)) | true, _wgslsmith_sub_u32(select((32040u & arg_0) << (1u % 32u), 4294967295u, true), ~(~min(arg_2.x, u_input.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(677f - -119f) - -427f);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-122f, -2138f), vec2<f32>(-142f, -708f))))), vec2<f32>(_wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(904f + -1263f)), 1f), vec2<bool>(true, true))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-386f, 2092f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-301f, -1000f), vec2<f32>(330f, 128f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(533f, -917f) - vec2<f32>(-436f, -680f)))))));
    var var_1 = -649f;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -255f);
    var var_2 = Struct_1(vec3<bool>(true, (_wgslsmith_add_i32(-43229i, u_input.b.x) >= u_input.b.x) | (_wgslsmith_f_op_f32(func_3(u_input.a, u_input.b.zx, vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))) <= var_0.x), all(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true)))), any(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true)), select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), vec3<bool>(false, (u_input.b.x >> (25101u % 32u)) > max(15764i, u_input.b.x), all(vec3<bool>(true, true, true))), false), any(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, true && all(vec4<bool>(true, true, true, false)))), _wgslsmith_add_u32(~countOneBits(u_input.a | 81934u), 4294967295u));
    var_1 = 546f;
    return Struct_1(var_2.a, false, !vec3<bool>(false, any(!vec4<bool>(var_2.d, false, false, var_2.d)), all(vec4<bool>(true, var_2.b, var_2.c.x, true))), 1u <= select(_wgslsmith_mod_u32(4294967295u, 14514u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e, 1u, 1u), select(vec3<u32>(1u, 23813u, 13750u), vec3<u32>(0u, 37621u, 0u), vec3<bool>(var_2.c.x, true, var_2.a.x))), any(!vec4<bool>(true, true, var_2.b, var_2.a.x))), ~(~_wgslsmith_mod_u32(~63039u, abs(1u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1092f, -276f)) + -1711f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1042f)), _wgslsmith_f_op_f32(sign(-1655f))))));
    var var_1 = func_2().a.x;
    let var_2 = arg_0;
    var var_3 = ~(~(~vec4<u32>(u_input.a, 0u, 1u, 6758u) >> (vec4<u32>(countOneBits(arg_0.e), 29949u, 71996u, 27610u) % vec4<u32>(32u))));
    let var_4 = select(var_2.c.yx, var_2.c.xz, vec2<bool>(true, false));
    return u_input.b.x | -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, arg_1, arg_1, 46549i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 2147483647i) ^ vec4<i32>(arg_1, arg_1, -12273i, u_input.b.x)), vec4<i32>(countOneBits(arg_1), arg_1, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(43088i, -48239i), u_input.b.xz)));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(vec3<bool>(false, !(1u <= u_input.a), all(vec2<bool>(true, true))), any(vec2<bool>(true, all(vec4<bool>(false, false, true, true)))), vec3<bool>(!(0i >= u_input.b.x), true, true), false, 4294967295u);
    var var_1 = -2442f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(597f * _wgslsmith_div_f32(-1539f, _wgslsmith_f_op_f32(step(331f, -605f)))) + _wgslsmith_f_op_f32(abs(-749f)));
    var var_2 = 1u;
    var var_3 = -(~_wgslsmith_div_i32(u_input.b.x, -63276i)) ^ u_input.b.x;
    let var_4 = i32(-1i) * -func_4(func_2(), -22002i);
    return _wgslsmith_f_op_f32(sign(-1000f));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, ~arg_2, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, arg_0.e))), min(vec4<u32>(22364u, arg_0.e, 44390u, 4294967295u), vec4<u32>(4294967295u, arg_0.e, 1u, u_input.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, reverseBits(4294967295u)), ~(~vec2<u32>(12159u, arg_2))), ~u_input.a, 96934u), ~_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.a, arg_2, 16869u, arg_0.e), ~vec4<u32>(20283u, arg_2, 0u, u_input.a), all(vec4<bool>(arg_0.d, arg_1, arg_0.d, arg_1))), ~firstTrailingBit(vec4<u32>(6238u, arg_0.e, 1u, arg_0.e))));
    var var_1 = _wgslsmith_div_vec4_i32(-(max(vec4<i32>(-34912i, -1i, 2147483647i, -2147483647i) >> (vec4<u32>(1u, arg_0.e, 4294967295u, u_input.a) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -13840i, u_input.b.x, 17479i))) & (vec4<i32>(-1i) * -vec4<i32>(-1i, -17622i, u_input.b.x, -44496i))), vec4<i32>(u_input.b.x, _wgslsmith_add_i32(~(-15672i) >> (countOneBits(arg_0.e) % 32u), u_input.b.x), u_input.b.x, u_input.b.x));
    var var_2 = Struct_1(select(select(vec3<bool>(!arg_0.d, true, any(vec3<bool>(arg_0.c.x, true, arg_1))), !vec3<bool>(arg_0.b, arg_1, arg_0.c.x), !(!arg_0.c)), func_2().c, !arg_0.a), (i32(-1i) * -(~u_input.b.x)) == var_1.x, arg_0.c, true && (select(-1i, _wgslsmith_dot_vec3_i32(var_1.xzy, vec3<i32>(var_1.x, u_input.b.x, -2147483647i)), all(arg_0.c.zx)) > var_1.x), 22135u);
    var_2 = Struct_1(!var_2.a, any(!(!select(arg_0.c, arg_0.a, true))), vec3<bool>(_wgslsmith_sub_u32(firstTrailingBit(var_0.x), var_2.e) > 4294967295u, arg_1, !arg_0.d), u_input.b.x >= 14394i, _wgslsmith_clamp_u32(var_2.e, var_2.e | ~(arg_0.e | var_2.e), firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_2, var_2.e), vec3<u32>(1u, var_2.e, var_0.x)))));
    var var_3 = select(vec2<bool>(func_2().c.x, !all(!vec3<bool>(true, arg_1, false))), select(select(select(select(vec2<bool>(false, false), arg_0.a.xz, false), !var_2.a.xz, func_2().a.yx), var_2.a.zx, select(vec2<bool>(true, false), var_2.a.zx, arg_1)), select(select(!vec2<bool>(arg_1, arg_0.b), var_2.c.zz, arg_0.c.zy), arg_0.c.zx, select(var_2.c.zx, !arg_0.c.zx, vec2<bool>(var_2.c.x, false))), 1634f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) - _wgslsmith_f_op_f32(-arg_3))), arg_0.c.xz);
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = countOneBits(-firstLeadingBit(vec4<i32>(2147483647i, -2147483647i, 17656i, arg_3)) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(38105u, 22576u, arg_2, 1u) ^ vec4<u32>(1u, 40016u, arg_1.e, 0u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 0u, u_input.a), vec3<u32>(11090u, arg_2, arg_2)), arg_1.e, abs(103320u), u_input.a)) % vec4<u32>(32u)));
    return Struct_1(func_5(func_5(Struct_1(func_5(arg_1, arg_1.a.x, 1u, -608f).a, arg_1.d, select(vec3<bool>(true, true, false), arg_1.a, arg_1.b), arg_0 != -265f, 1u), true, ~75u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f + arg_0))), all(!arg_1.a), max(1u, arg_1.e), 920f).a, any(func_2().a.yy), arg_1.a, false, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~1u, u_input.a);
    let var_1 = all(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), 1u > ~(~u_input.a), true));
    var var_2 = u_input.b.x >> (22061u % 32u);
    var var_3 = func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f - _wgslsmith_f_op_f32(f32(-1f) * -2261f)) + -1081f), func_5(Struct_1(!select(vec3<bool>(true, var_1, false), vec3<bool>(true, var_1, true), false), true, !(!vec3<bool>(false, true, var_1)), true, abs(6844u)), var_1, _wgslsmith_clamp_u32(var_0.x, abs(_wgslsmith_div_u32(4294967295u, 41698u)), ~(~var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2412f)) - _wgslsmith_f_op_f32(func_1()))), 102328u, abs(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -63490i, 17256i, 1i), vec4<i32>(1i, u_input.b.x, u_input.b.x, 80856i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-15394i, 2147483647i, 1294i)))));
    var_2 = firstLeadingBit(_wgslsmith_mult_i32(u_input.b.x, -(~u_input.b.x)) >> ((0u | abs(var_3.e & u_input.a)) % 32u));
    let var_4 = func_5(Struct_1(vec3<bool>(false, select(all(vec2<bool>(false, false)), var_3.a.x, any(vec2<bool>(var_3.d, true))), all(vec4<bool>(var_3.b, var_1, true, var_3.a.x)) || var_3.d), true, func_6(_wgslsmith_f_op_f32(531f * 1000f), Struct_1(vec3<bool>(var_1, var_1, var_1), false, var_3.c, var_3.b, var_0.x & 54338u), var_0.x, 4752i).c, true, var_0.x), var_3.b, 48600u, -279f).e;
    var var_5 = Struct_1(var_3.a, true && all(select(!vec2<bool>(var_1, var_3.c.x), func_6(707f, Struct_1(var_3.a, var_1, var_3.c, var_3.c.x, var_4), 38157u, u_input.b.x).a.zx, var_3.d)), func_5(func_2(), var_3.d, 21082u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1065f + -1548f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-719f * -760f))), true))).a, var_3.c.x, _wgslsmith_mod_u32(~1u, 0u << (~_wgslsmith_mod_u32(var_3.e, 4294967295u) % 32u)));
    let var_6 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -593f))), vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(43489i, -(u_input.b.x & u_input.b.x)), u_input.b.x), abs(~var_0 & vec2<u32>(21963u, var_3.e)) >> (var_0 % vec2<u32>(32u)), firstTrailingBit(u_input.a));
}

