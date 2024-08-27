struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(true));
    var var_1 = Struct_2(Struct_1(false));
    let var_2 = _wgslsmith_mod_u32(~(~(_wgslsmith_mod_u32(u_input.b.x, 43256u) & 10719u)), 20970u);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.c.yx))));
    var_1 = Struct_2(var_0.a);
    return _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~u_input.b.xz, _wgslsmith_clamp_vec2_u32(u_input.b.xx, vec2<u32>(u_input.d, arg_1.d), u_input.b.zy)) << (u_input.b.x % 32u), abs(~var_2), _wgslsmith_add_u32(17573u, var_2)), _wgslsmith_div_vec3_u32(u_input.b, u_input.b));
}

fn func_2(arg_0: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_2(Struct_1(false));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(Struct_1(select(_wgslsmith_add_i32(arg_0.x, arg_0.x), -arg_0.x, !var_0.a.a) != (39070i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.b.x), vec4<u32>(1u, 60889u, 1555u, u_input.b.x)) % 32u))));
    var_0 = Struct_2(var_0.a);
    let var_1 = _wgslsmith_add_vec4_u32(~_wgslsmith_div_vec4_u32(~select(vec4<u32>(u_input.d, 83573u, u_input.d, 4294967295u), vec4<u32>(u_input.d, 36105u, 1u, u_input.b.x), false), _wgslsmith_mult_vec4_u32(select(vec4<u32>(1u, u_input.d, 69552u, 4294967295u), vec4<u32>(1u, 34349u, 38926u, 17983u), vec4<bool>(true, var_0.a.a, true, var_0.a.a)), vec4<u32>(u_input.d, u_input.d, 1u, 23754u))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(func_3(Struct_4(0i), Struct_3(var_0.a.a, vec3<f32>(248f, -400f, -1000f), vec3<f32>(-789f, 213f, 234f), u_input.d)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(19548u, 23186u, 54191u))), u_input.b), u_input.d, 64551u, u_input.d));
    return select(!(!vec4<bool>(true || var_0.a.a, any(vec4<bool>(false, true, false, var_0.a.a)), var_0.a.a && false, var_0.a.a)), select(!(!vec4<bool>(false, var_0.a.a, false, false)), select(vec4<bool>(select(false, var_0.a.a, true), var_0.a.a, var_0.a.a, any(vec4<bool>(var_0.a.a, var_0.a.a, true, false))), !select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a), vec4<bool>(var_0.a.a, var_0.a.a, true, true), vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, false)), select(!vec4<bool>(true, true, var_0.a.a, var_0.a.a), !vec4<bool>(var_0.a.a, true, var_0.a.a, false), var_0.a.a)), vec4<bool>(var_0.a.a, !var_0.a.a, !any(vec3<bool>(false, var_0.a.a, var_0.a.a)), all(vec4<bool>(false, false, var_0.a.a, true)) || true)), vec4<bool>(any(vec3<bool>(all(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, var_0.a.a)), true, false)), false, (~u_input.b.x ^ var_1.x) != 44878u, _wgslsmith_add_i32(-arg_0.x, arg_0.x) > -35389i));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = select(!select(vec4<bool>(arg_0, !arg_1.a, all(vec3<bool>(false, false, arg_0)), select(arg_0, arg_1.a, false)), select(!vec4<bool>(true, arg_0, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.a, arg_0, true, arg_0)), select(select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(true, true, true, arg_0), vec4<bool>(true, false, true, arg_0)), select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_1.a, arg_1.a, arg_0, arg_1.a)), vec4<bool>(true, arg_0, true, true))), select(select(!vec4<bool>(arg_1.a, arg_1.a, false, false), vec4<bool>(arg_0, false, arg_1.a, 1u >= u_input.d), true), select(func_2(~vec3<i32>(u_input.a.x, 1i, u_input.a.x)), select(select(vec4<bool>(false, false, arg_1.a, false), vec4<bool>(arg_1.a, false, true, arg_0), arg_1.a), func_2(vec3<i32>(-1i, u_input.c.x, u_input.c.x)), !vec4<bool>(false, arg_0, arg_0, arg_0)), vec4<bool>(all(vec3<bool>(false, arg_1.a, arg_1.a)), arg_1.a, true, arg_0)), vec4<bool>(!(!arg_0), arg_1.a, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_1.a), true)), !arg_0)), !(!select(!vec4<bool>(arg_0, true, arg_1.a, true), vec4<bool>(false, true, true, true), true)));
    let var_1 = _wgslsmith_clamp_u32(reverseBits(reverseBits(arg_2.x)), 4294967295u, 0u);
    let var_2 = Struct_3(all(select(select(vec2<bool>(var_0.x, false), var_0.wz, false), select(var_0.wx, vec2<bool>(true, true), var_0.xx), !var_0.wx)) || any(var_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-706f, 699f, -322f), vec3<f32>(1804f, -937f, 1429f))) + vec3<f32>(-937f, -851f, -1704f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-473f, 867f, 1246f), vec3<f32>(-101f, 239f, 125f), vec3<bool>(arg_0, false, arg_1.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-487f, 1000f, 432f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1186f, -251f, 383f)))))), var_1);
    let var_3 = !any(vec4<bool>(reverseBits(var_2.d) != (var_2.d ^ arg_2.x), true, all(!vec4<bool>(false, false, var_2.a, arg_0)), true));
    let var_4 = ~abs(min(vec2<i32>(35801i, ~(-21191i)), vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 2147483647i)));
    return Struct_3(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.x - var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.b.x))), _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-539f + -169f))))), ~(var_1 ^ var_2.d));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(~(~(~_wgslsmith_add_i32(u_input.a.x, u_input.c.x))));
    let var_1 = Struct_2(arg_2);
    var var_2 = max(vec2<i32>(u_input.a.x, abs(var_0.a)), abs(u_input.c.xw));
    let var_3 = max(_wgslsmith_mult_i32(-21166i, _wgslsmith_div_i32(-var_2.x, -2147483647i)), var_2.x) | _wgslsmith_sub_i32(firstLeadingBit(firstTrailingBit(1i)) >> (~firstLeadingBit(arg_0.d) % 32u), 1i);
    var var_4 = var_3;
    return var_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_1(!arg_0.a);
    return Struct_2(func_4(func_1(true & arg_0.a, arg_0, vec3<u32>(~0u, abs(719u), 1u)), ~(~vec4<u32>(51658u, u_input.b.x, u_input.d, 144632u)), Struct_1(true)));
}

fn func_6(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(-(~1i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.d, u_input.b.x, u_input.d), vec4<u32>(14080u, 1u, u_input.b.x, u_input.d)) % 32u)));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(countOneBits(~u_input.c.x), var_0.a), 18058i, -_wgslsmith_mod_i32(57204i, ~(-2147483647i))), _wgslsmith_div_vec3_i32(u_input.c.xxy, u_input.a.wyy) ^ countOneBits(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.a.x), -2147483647i, -28551i)));
    var_1 = 1i;
    var var_2 = -234f;
    let var_3 = Struct_3(!all(!func_2(vec3<i32>(-1i, var_0.a, 53732i)).zwy), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-399f, -717f)), -1419f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, 221f, arg_0.a.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f)), -2620f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(662f)), _wgslsmith_f_op_f32(ceil(170f)), _wgslsmith_f_op_f32(793f + -1000f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-328f, -190f, -404f), vec3<f32>(-468f, -549f, -1643f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-772f, -443f, 2299f)) - vec3<f32>(2011f, 1697f, 1477f)))), u_input.d);
    return Struct_3(!arg_0.a.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-772f, var_3.c.x, arg_0.a.a))), _wgslsmith_f_op_f32(-1000f - var_3.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.c.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(574f)), _wgslsmith_f_op_f32(var_3.c.x - -2304f), 531f))), _wgslsmith_f_op_vec3_f32(func_1(var_3.b.x != -1586f, func_5(func_5(Struct_1(true), var_3.b.x).a, _wgslsmith_f_op_f32(f32(-1f) * -859f)).a, vec3<u32>(4294967295u | var_3.d, 53717u & var_3.d, u_input.b.x)).b + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3.c)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_3.c.x, var_3.c.x, var_3.c.x))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-561f, -1784f, var_3.b.x)))))), 23743u >> (0u % 32u));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(sign(-182f))), _wgslsmith_f_op_f32(-arg_0.b.x))), -1599f));
    let var_1 = Struct_4(~_wgslsmith_dot_vec3_i32(~vec3<i32>(14818i, 18442i, u_input.a.x), u_input.c.wwx));
    let var_2 = ~(abs(max(_wgslsmith_sub_u32(u_input.d, u_input.b.x), ~arg_0.d)) >> (21974u % 32u));
    let var_3 = vec3<bool>(true, all(func_2(vec3<i32>(var_1.a, -1i, arg_1.a))) == (!(arg_0.a && true) && (_wgslsmith_f_op_f32(exp2(var_0.x)) < _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b.x)))) >= var_0.x);
    let var_4 = Struct_4(-_wgslsmith_div_i32(-2220i, 13974i & arg_2.a));
    return func_6(Struct_2(func_5(func_4(arg_0, _wgslsmith_sub_vec4_u32(vec4<u32>(47406u, var_2, 1u, 3599u), vec4<u32>(arg_0.d, 4294967295u, arg_0.d, 0u)), func_5(Struct_1(true), 1631f).a), _wgslsmith_f_op_f32(trunc(1000f))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(func_5(func_4(func_1(true, Struct_1(true), u_input.b), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 68126u), Struct_1(true)), _wgslsmith_f_op_f32(abs(1f)))), Struct_4(abs(u_input.c.x)), Struct_4(_wgslsmith_mod_i32(u_input.c.x, i32(-1i) * -u_input.c.x)), u_input.a.xx);
    var var_1 = _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(max(func_7(func_6(func_5(Struct_1(true), var_0.b.x)), Struct_4(firstLeadingBit(2147483647i)), Struct_4(6181i), vec2<i32>(firstTrailingBit(-46748i), 0i)).c.x, var_0.c.x)));
    let var_2 = func_5(func_4(Struct_3(!(!var_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, 695f, var_0.b.x) - var_0.b), var_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), 11448u), firstTrailingBit((vec4<u32>(var_0.d, 31590u, 41864u, var_0.d) & vec4<u32>(u_input.d, 64166u, u_input.b.x, u_input.d)) & ~vec4<u32>(0u, var_0.d, var_0.d, u_input.b.x)), func_5(func_4(Struct_3(var_0.a, var_0.b, var_0.c, u_input.d), ~vec4<u32>(62354u, 44222u, 21291u, u_input.b.x), Struct_1(false)), var_0.b.x).a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))));
    let var_3 = firstLeadingBit(~_wgslsmith_sub_u32(u_input.b.x, ~u_input.d));
    var_1 = 761f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.c.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(1433f + var_0.c.x)))), var_3, -133f, i32(-1i) * -firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 40346i), vec2<i32>(u_input.c.x, u_input.a.x))));
}

