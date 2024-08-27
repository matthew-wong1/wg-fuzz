struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = reverseBits(-arg_0.x);
    let var_1 = Struct_1(select(select(u_input.b, vec4<u32>(0u, 14709u, 116327u, _wgslsmith_div_u32(4294967295u, 1u)), select(arg_2.e, !arg_2.e, vec4<bool>(arg_2.e.x, arg_2.e.x, arg_2.e.x, true))), vec4<u32>(~(35956u >> (u_input.a.x % 32u)), ~0u, ~0u, select(arg_1.x, min(34852u, u_input.a.x), false)), true), countOneBits(4507u), arg_2.e.yxz, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.d.x, arg_2.d.x)) + 914f) + arg_2.d.x)), select(!select(arg_2.e, !vec4<bool>(arg_2.e.x, true, false, false), arg_2.c.x), arg_2.e, arg_2.e));
    let var_2 = _wgslsmith_dot_vec3_u32(~arg_2.a.xzx, ~vec3<u32>(arg_1.x, var_1.a.x, countOneBits(~u_input.b.x)));
    let var_3 = ~vec3<i32>(~1i, 1i, _wgslsmith_mod_i32(~(-52614i), arg_0.x)) | -(arg_0.yyw ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 0i), arg_0.yzw));
    let var_4 = Struct_1(vec4<u32>(arg_1.x, u_input.a.x, _wgslsmith_clamp_u32(min(~arg_1.x, _wgslsmith_mod_u32(var_2, var_1.a.x)), u_input.c, 93539u), max(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.x, var_2, var_2, 24887u), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_2.b, 37660u, 1u), vec4<u32>(1u, var_1.b, arg_2.b, var_1.b))), _wgslsmith_sub_u32(u_input.b.x, ~31121u))), ~(~arg_2.a.x), arg_2.e.wxy, _wgslsmith_f_op_vec2_f32(min(var_1.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1709f, var_1.d.x) - var_1.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.d.x)), _wgslsmith_f_op_f32(round(arg_2.d.x))))))), !arg_2.e);
    return !all(!(!vec3<bool>(arg_2.e.x, var_1.e.x, false)));
}

fn func_4(arg_0: vec4<bool>) -> vec2<f32> {
    let var_0 = Struct_1(vec4<u32>(u_input.c, 0u, ~u_input.c, _wgslsmith_div_u32(73692u, 136275u)), reverseBits(u_input.c ^ ~u_input.c), select(select(vec3<bool>(false, any(vec3<bool>(true, true, false)), false), select(vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, true, arg_0.x), all(vec4<bool>(false, false, arg_0.x, arg_0.x))), true), !vec3<bool>(!arg_0.x, false, true), vec3<bool>(true, arg_0.x, arg_0.x)), vec2<f32>(_wgslsmith_f_op_f32(round(-889f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1424f)), _wgslsmith_f_op_f32(-1541f * -103f))))), select(vec4<bool>(false, _wgslsmith_mod_u32(u_input.b.x, u_input.a.x) != 45805u, false, !arg_0.x), vec4<bool>(false, !(arg_0.x && arg_0.x), arg_0.x, all(arg_0.wyw) & arg_0.x), select(select(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), false)), select(!vec4<bool>(arg_0.x, arg_0.x, true, false), select(vec4<bool>(true, false, true, arg_0.x), arg_0, vec4<bool>(true, arg_0.x, false, true)), vec4<bool>(true, false, false, true)), vec4<bool>(select(false, arg_0.x, true), all(vec3<bool>(arg_0.x, false, false)), arg_0.x, true))));
    let var_1 = Struct_1(~vec4<u32>(80893u, ~(~var_0.b), reverseBits(var_0.b), ~abs(var_0.b)), ~_wgslsmith_div_u32(~1u, 1u), select(select(!vec3<bool>(arg_0.x, var_0.c.x, true), vec3<bool>(var_0.e.x, true, all(var_0.e)), select(var_0.c, arg_0.wzx, var_0.e.x)), arg_0.wwx, !arg_0.x), var_0.d, vec4<bool>(false, var_0.c.x, true, true));
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.x);
    let var_3 = select(!select(select(!vec3<bool>(true, arg_0.x, false), var_1.c, select(var_0.c, arg_0.ywz, vec3<bool>(var_0.c.x, var_1.e.x, true))), !select(vec3<bool>(true, var_1.c.x, false), arg_0.zwz, arg_0.x), false), arg_0.wyx, true != any(arg_0.wx));
    var var_4 = Struct_1(~var_1.a, 18407u, !select(arg_0.xwz, var_0.e.xwz, vec3<bool>(func_3(vec4<i32>(-46896i, -1i, 0i, 19021i), vec4<u32>(u_input.c, 0u, 417u, 32470u), Struct_1(vec4<u32>(1u, 2121u, 1503u, var_1.b), var_1.b, arg_0.wxz, var_1.d, vec4<bool>(true, var_1.c.x, false, true))), true, all(vec3<bool>(var_1.e.x, true, false)))), var_1.d, vec4<bool>(any(vec3<bool>(var_2 >= 1746f, func_3(vec4<i32>(-11836i, 0i, 64069i, -5905i), var_1.a, Struct_1(var_0.a, u_input.b.x, var_0.e.yxw, var_0.d, var_0.e)), false || var_1.e.x)), any(!vec2<bool>(false, var_1.e.x)), var_0.c.x, true));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.d.x, var_0.d.x), 499f));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -928f))) - -1424f));
    var var_1 = vec4<bool>(false, true, all(vec3<bool>(false, all(vec3<bool>(false, false, true)), true)) & false, true);
    let var_2 = Struct_1(vec4<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(u_input.c, u_input.b.x, 63671u)), u_input.b.x, 38028u, u_input.c ^ ~(~u_input.b.x)), 112750u, vec3<bool>(any(select(!vec4<bool>(var_1.x, true, var_1.x, true), vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, var_1.x, false))), !var_1.x, !any(vec4<bool>(var_1.x, var_1.x, true, var_1.x))), _wgslsmith_f_op_vec2_f32(func_4(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), func_3(vec4<i32>(2147483647i, 17625i, 1i, 20615i), u_input.b, Struct_1(vec4<u32>(u_input.b.x, 40614u, u_input.a.x, 1u), 29462u, var_1.zyw, vec2<f32>(-1000f, -1935f), vec4<bool>(var_1.x, true, var_1.x, var_1.x)))), vec4<bool>(true, true, true, var_1.x), false))), vec4<bool>(var_1.x, !var_1.x || true, true, true));
    var_1 = var_2.e;
    var_1 = var_2.e;
    return Struct_1(reverseBits(~u_input.b), firstTrailingBit(~53962u << ((~var_2.b << (1u % 32u)) % 32u)), !vec3<bool>(all(vec4<bool>(true, true, true, var_2.c.x)), !var_2.c.x && select(false, var_1.x, false), !select(var_2.c.x, var_1.x, false)), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -589f))), var_2.d.x), select(vec4<bool>(max(var_2.b, 35750u) > firstTrailingBit(u_input.c), false & var_1.x, var_1.x, true), vec4<bool>(true, all(!var_2.c.yy), true && (var_2.c.x != var_1.x), all(select(vec3<bool>(true, var_2.c.x, false), var_1.xyw, false))), vec4<bool>(true, true, !var_2.c.x, any(select(var_1.xy, vec2<bool>(true, var_2.e.x), var_1.wy)))));
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_2();
    let var_1 = var_0.c.yz;
    let var_2 = _wgslsmith_f_op_f32(-var_0.d.x);
    var_0 = arg_3;
    let var_3 = vec2<i32>(~0i, arg_1);
    return !vec3<bool>(true, true, var_0.e.x);
}

fn func_1() -> i32 {
    var var_0 = ~(~(-(~73916i >> (~u_input.c % 32u))));
    let var_1 = select(!vec2<bool>(true & any(vec4<bool>(false, false, true, false)), true), vec2<bool>(!any(vec2<bool>(true, false)), all(func_5(_wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(0u, 0u)), abs(-2082i), 1i, func_2()))), vec2<bool>(all(vec4<bool>(true, true, select(true, true, false), true)), any(vec3<bool>(true, true, true))));
    var var_2 = func_2();
    var_2 = Struct_1(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.a.x, _wgslsmith_sub_u32(u_input.b.x, 44149u), func_2().b), vec4<u32>(abs(4294967295u), 4294967295u, u_input.b.x, 0u)), ~_wgslsmith_div_u32(u_input.b.x, 18111u), vec3<bool>(true, !var_1.x, func_3(_wgslsmith_add_vec4_i32(vec4<i32>(7186i, -33553i, 14898i, 0i), vec4<i32>(-1i, 24781i, -6909i, 2331i)), firstLeadingBit(u_input.a), Struct_1(var_2.a, 24132u, var_2.e.wzx, var_2.d, var_2.e)) || !func_5(u_input.a.x, 1i, 58369i, Struct_1(var_2.a, 1u, var_2.e.www, var_2.d, var_2.e)).x), vec2<f32>(-1574f, 689f), vec4<bool>(true, true, var_2.e.x, var_1.x));
    var var_3 = !(true & (all(var_1) == !var_1.x));
    return ~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-10162i, 0i), vec2<i32>(-4202i, 1i)) | 1i, ~(~2147483647i)) | -13482i;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = arg_0;
    let var_1 = vec2<f32>(-867f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.d.x * arg_1.d.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f + -549f), arg_1.d.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1671f, arg_1.d.x)), arg_1.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1633f * arg_1.d.x)))));
    var var_2 = func_2();
    let var_3 = min(arg_1.a.xx, select(~(~vec2<u32>(1u, u_input.b.x)), vec2<u32>(23208u, 5145u), !var_2.e.x));
    var var_4 = 597f;
    return _wgslsmith_dot_vec2_i32(abs(-(~vec2<i32>(-4310i, 40265i))), abs(vec2<i32>(1i, _wgslsmith_mod_i32(arg_0, _wgslsmith_mult_i32(1i, arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(~(-3347i), -4847i, 43615i), ~1i), firstLeadingBit(1i), _wgslsmith_clamp_i32(~3406i, ~_wgslsmith_add_i32(-1199i, 26565i), func_1())), Struct_1(_wgslsmith_add_vec4_u32(countOneBits(u_input.b), _wgslsmith_add_vec4_u32(firstTrailingBit(u_input.a), abs(vec4<u32>(32123u, u_input.b.x, u_input.b.x, u_input.b.x)))), ~56389u, func_5(firstLeadingBit(1650u), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, -2147483647i, 1i, 2147483647i), vec4<i32>(19099i, 0i, 101221i, 2147483647i), true), abs(vec4<i32>(-30362i, -12924i, 18083i, 0i))), -(~35453i), func_2()), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-108f, 1324f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1085f, -105f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(219f, 645f))))), select(vec4<bool>(true, true, true, true), !func_2().e, !func_2().e)));
    let var_1 = vec4<f32>(495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1155f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - 409f) * _wgslsmith_f_op_f32(f32(-1f) * -363f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(2261f))))), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1433f)))))));
    let var_2 = false;
    var var_3 = select(~(~u_input.b.xxz), u_input.b.zxz, vec3<bool>(var_2, var_2, -901f < _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(var_2, false, var_2, var_2))).x));
    var_3 = func_2().a.wzy;
    let var_4 = Struct_1(reverseBits(_wgslsmith_mult_vec4_u32(u_input.a | vec4<u32>(u_input.b.x, var_3.x, 26135u, var_3.x), vec4<u32>(100525u, u_input.a.x << (var_3.x % 32u), ~var_3.x, _wgslsmith_mod_u32(var_3.x, 43677u)))), u_input.c, vec3<bool>(all(!vec4<bool>(var_2, var_2, false, var_2)) || true, any(vec2<bool>(!var_2, false)), !(!(!var_2))), var_1.xx, vec4<bool>(func_3(select(vec4<i32>(-2147483647i, -11832i, var_0, var_0), vec4<i32>(1i, 15032i, var_0, 19388i), vec4<bool>(var_2, var_2, false, true)) & select(vec4<i32>(-1i, var_0, var_0, 31073i), vec4<i32>(2147483647i, var_0, -21939i, var_0), vec4<bool>(false, var_2, var_2, var_2)), ~(vec4<u32>(0u, var_3.x, 61683u, var_3.x) | u_input.a), Struct_1(u_input.b, _wgslsmith_clamp_u32(var_3.x, 4294967295u, var_3.x), select(vec3<bool>(true, var_2, var_2), vec3<bool>(var_2, true, false), var_2), var_1.wy, !vec4<bool>(true, true, var_2, var_2))), true, true, func_3(vec4<i32>(~2147483647i, -6535i, -3773i, var_0), vec4<u32>(~77520u, var_3.x, 0u, var_3.x | var_3.x), Struct_1(u_input.b, var_3.x, select(vec3<bool>(true, true, var_2), vec3<bool>(true, var_2, var_2), false), vec2<f32>(var_1.x, var_1.x), vec4<bool>(var_2, true, var_2, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(firstLeadingBit(450u), u_input.a.x, true)), reverseBits(~countOneBits(var_4.b)));
}

