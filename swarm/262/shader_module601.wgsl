struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 759f, -861f, 2077f)))), _wgslsmith_dot_vec3_i32(-(max(vec3<i32>(arg_0, -3848i, -18367i), vec3<i32>(-1i, arg_0, 23276i)) << ((vec3<u32>(u_input.b, 36779u, 34211u) >> (vec3<u32>(4294967295u, 85214u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), select(max(-vec3<i32>(-2147483647i, 15098i, 2147483647i), select(vec3<i32>(arg_0, 0i, -2147483647i), vec3<i32>(arg_0, 10126i, 0i), false)), reverseBits(abs(vec3<i32>(arg_0, 22054i, arg_0))), any(vec2<bool>(true, false)) && true)), vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 62671u), vec2<u32>(u_input.b, 46035u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), (vec2<u32>(36224u, u_input.b) ^ vec2<u32>(u_input.a, 82750u)) >> (vec2<u32>(31006u, 136137u) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_mod_u32(u_input.a, ~4294967295u))), !(-arg_0 > arg_0));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x)), 1013f, var_0.d))), _wgslsmith_mult_i32((0i & arg_0) ^ countOneBits(arg_0), arg_0) >= 1i));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, vec4<f32>(-1364f, var_2, var_0.a.x, -1000f)) - var_0.a) * var_0.a))), -24568i, ~(_wgslsmith_add_vec3_u32(~var_0.c, abs(var_0.c)) >> (vec3<u32>(var_0.c.x & var_0.c.x, u_input.a, u_input.b) % vec3<u32>(32u))), false);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), _wgslsmith_f_op_vec4_f32(var_0.a + var_0.a))), var_0.a))), ~_wgslsmith_div_i32(arg_0, firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(32833i, -57701i, 0i), vec3<i32>(var_0.b, arg_0, arg_0)))), var_0.c, false);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 702f, -416f, arg_1) - vec4<f32>(-354f, arg_1, 696f, arg_1)))), firstTrailingBit(1i >> (u_input.b % 32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 107657u, 26161u), firstTrailingBit(vec3<u32>(u_input.b, 12471u, 5707u))), (true & any(vec2<bool>(arg_0, arg_0))) || all(vec2<bool>(false, arg_0))), arg_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -166f, arg_1), vec4<f32>(arg_1, 520f, arg_1, 516f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, arg_1, -557f, -528f))))), select(-10365i, ~1i, true), vec3<u32>(u_input.b, u_input.b, ~firstTrailingBit(u_input.b)), arg_0), Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-180f - arg_1), arg_1), arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1)) + _wgslsmith_f_op_f32(func_3(34173i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), 1i, vec3<u32>(u_input.a, ~u_input.a & u_input.b, ~u_input.b << (1u % 32u)), arg_0));
    global0 = firstTrailingBit(-747i) ^ (var_0.c.b >> (~16254u % 32u));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_1 + arg_1), 205f, _wgslsmith_div_f32(827f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(1i, var_0.d.b)))), _wgslsmith_f_op_f32(var_0.a.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x - -214f)))), min(_wgslsmith_mod_i32(var_0.d.b, _wgslsmith_div_i32(~var_0.d.b, var_0.a.b)), countOneBits(-(~(-1i)))), vec3<u32>(u_input.b, reverseBits(10424u) & (var_0.c.c.x & 1u), ~u_input.b), all(select(select(select(vec4<bool>(arg_0, true, var_0.a.d, var_0.b), vec4<bool>(true, var_0.a.d, var_0.d.d, var_0.b), true), !vec4<bool>(false, arg_0, var_0.c.d, arg_0), var_0.b), !(!vec4<bool>(var_0.d.d, var_0.d.d, true, var_0.a.d)), vec4<bool>(true, false, true, select(var_0.d.d, var_0.d.d, false)))));
    let var_2 = _wgslsmith_f_op_f32(step(1f, 838f));
    let var_3 = Struct_2(Struct_1(var_0.d.a, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b, var_1.b), vec2<i32>(var_0.d.b, var_1.b)), vec2<i32>(var_1.b, var_1.b) & vec2<i32>(-2147483647i, -1i)), vec3<u32>(var_1.c.x, 1u, 64563u) & ~select(var_1.c, var_0.a.c, vec3<bool>(var_1.d, true, false)), var_0.c.d), var_1.d, var_1, var_0.a);
    return var_1;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(func_2(select(~43859u >= abs(u_input.b), !any(vec2<bool>(false, false)), all(select(vec3<bool>(arg_0.c.d, arg_1.d, arg_0.c.d), vec3<bool>(arg_1.d, arg_1.d, arg_1.d), arg_0.d.d))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.c.a.x))), arg_0.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a, vec4<f32>(arg_1.a.x, arg_1.a.x, -199f, arg_1.a.x), arg_0.c.d))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c.a.x, -785f, -1744f, arg_1.a.x)))), arg_0.a.b, vec3<u32>(arg_1.c.x >> (arg_0.a.c.x % 32u), _wgslsmith_clamp_u32(83798u, 2044u, arg_0.c.c.x), u_input.a) & (arg_1.c | arg_1.c), arg_1.d), arg_0.d);
    var var_1 = select(var_0.a.c, select(max(~arg_0.a.c, vec3<u32>(arg_1.c.x, u_input.b, 86933u) << (vec3<u32>(1u, 9541u, arg_1.c.x) % vec3<u32>(32u))), arg_1.c, vec3<bool>(var_0.d.d, var_0.d.d, false)) >> (vec3<u32>(~u_input.b, ~_wgslsmith_mod_u32(0u, arg_1.c.x), _wgslsmith_mod_u32(arg_0.c.c.x, arg_1.c.x)) % vec3<u32>(32u)), !(!arg_1.d));
    var var_2 = 699f;
    var_1 = var_0.c.c;
    var var_3 = ~(~(vec3<i32>(-1i) * -vec3<i32>(arg_0.c.b, 0i, arg_0.a.b))) << (select(var_0.a.c, arg_1.c | (arg_1.c ^ abs(arg_0.a.c)), vec3<bool>(all(vec3<bool>(arg_0.d.d, arg_0.d.d, true)), true, var_0.b)) % vec3<u32>(32u));
    return arg_0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-571f, 1000f, -1420f, 713f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(579f, -1762f, 1479f, 482f))), select(_wgslsmith_clamp_i32(0i, 2147483647i, 31105i), -6607i, true), ~(~vec3<u32>(u_input.b, u_input.a, u_input.b)), true), !any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2215f, -958f, -1018f, -1000f), vec4<f32>(160f, -416f, 612f, -474f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, 769f, 1578f, -1000f))), 1i, firstLeadingBit(vec3<u32>(0u, 4294967295u, u_input.a) ^ vec3<u32>(26679u, u_input.b, u_input.b)), false), Struct_1(vec4<f32>(274f, 2229f, _wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(round(-897f))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 21665i, -760i), vec3<i32>(1i, -18583i, -1i)), -vec3<i32>(0i, -69633i, -3727i)), ~vec3<u32>(0u, u_input.b, u_input.b), !all(vec3<bool>(true, false, false)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(525f, -1000f, -767f, 1000f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-808f, 1286f, -1000f, 1227f))))), -_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), ~(~(~vec3<u32>(u_input.b, u_input.a, 10575u))), false));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(func_2(true, _wgslsmith_f_op_f32(1511f - 1073f)).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(419f, 1550f, -1759f, 1000f) + vec4<f32>(133f, -1624f, 497f, -621f)) * vec4<f32>(-321f, 626f, 649f, 1578f)), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, _wgslsmith_f_op_f32(-996f - 966f), _wgslsmith_f_op_f32(trunc(-832f)), _wgslsmith_f_op_f32(1441f + -262f)))), _wgslsmith_mult_i32(-1i, ~(_wgslsmith_sub_i32(24537i, -39848i) & firstTrailingBit(37598i))), vec3<u32>(_wgslsmith_add_u32(61820u, u_input.a) >> (u_input.b % 32u), 0u, u_input.a), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), 1130f, _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1374f - -583f))));
    global0 = _wgslsmith_div_i32(-2147483647i, var_0.b);
    global0 = var_0.b;
    let var_2 = max(-countOneBits(firstTrailingBit(vec2<i32>(var_0.b, -14762i))), _wgslsmith_div_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.b), vec2<i32>(var_0.b, var_0.b)), vec2<i32>(var_0.b, -62537i)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-24191i, -25265i), vec2<i32>(var_0.b, 2147483647i))))) | ~(~(~(~vec2<i32>(-2147483647i, var_0.b))));
    let var_3 = !select(vec2<bool>(true, !(var_2.x <= 0i)), vec2<bool>(func_2(var_0.d, -1699f).d, false), !select(vec2<bool>(var_0.d, var_0.d), select(vec2<bool>(false, var_0.d), vec2<bool>(true, var_0.d), vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_0.b, var_2.x, var_0.b, var_2.x)), ~(vec4<i32>(var_2.x, var_2.x, -1i, var_2.x) ^ vec4<i32>(-36089i, var_2.x, var_0.b, var_2.x))), u_input.b, reverseBits(9849u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(277f))), var_0.c.x);
}

