struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~17993i, arg_1.x), arg_0.d.x)), -24200i);
    let var_1 = arg_0;
    let var_2 = var_1.c.d.yz;
    var var_3 = vec4<u32>(abs(~(~(~var_1.b.b.x))), 71409u, arg_0.c.b.x, ~4294967295u);
    let var_4 = Struct_4(arg_0.c, Struct_3(vec2<bool>(!any(vec4<bool>(arg_0.c.e, arg_0.b.e, true, arg_0.b.c)), !(var_1.c.e && false)), Struct_2(vec4<f32>(var_1.c.d.x, var_2.x, _wgslsmith_f_op_f32(exp2(var_2.x)), 874f), _wgslsmith_mod_vec4_u32(var_1.c.b, select(var_1.b.b, vec4<u32>(var_3.x, 9576u, var_1.c.b.x, 0u), vec4<bool>(false, true, false, true))), !all(vec3<bool>(false, var_1.c.c, var_1.c.c)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, -448f, var_1.b.d.x))), arg_0.c.e), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, -109f, 463f, arg_0.b.d.x))), ~arg_0.b.b, false, vec3<f32>(_wgslsmith_f_op_f32(max(1475f, var_1.e)), _wgslsmith_f_op_f32(f32(-1f) * -172f), -1052f), _wgslsmith_f_op_f32(min(arg_0.c.d.x, var_2.x)) < _wgslsmith_f_op_f32(max(1827f, var_2.x))), vec2<i32>(reverseBits(-1i), var_1.d.x), _wgslsmith_f_op_f32(round(var_2.x))), ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-975i, -9396i)), vec2<i32>(60465i, -var_1.d.x)), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~4895u, var_1.b.b.x), ~(var_3.ww << (vec2<u32>(4294967295u, arg_0.b.b.x) % vec2<u32>(32u)))), vec2<u32>(1u, 4294967295u)), var_1.d);
    return 1757f;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 2043f)), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(true, true), Struct_2(vec4<f32>(999f, 183f, -619f, -718f), vec4<u32>(0u, 4294967295u, 1u, 8250u), false, vec3<f32>(1526f, -740f, 980f), false), Struct_2(vec4<f32>(-3002f, 1907f, -1819f, 386f), vec4<u32>(4294967295u, 4294967295u, 50243u, 0u), false, vec3<f32>(-607f, -1000f, 1000f), false), u_input.a.yx, 1000f), select(vec3<i32>(u_input.a.x, 44335i, 2147483647i), vec3<i32>(u_input.a.x, u_input.b.x, -1i), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-142f + -566f) - _wgslsmith_f_op_f32(-1369f - 828f)), _wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(53888u, 23421u, 38215u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1465f, -1000f, 2027f)))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(125f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(true, false), Struct_2(vec4<f32>(-2039f, 1661f, -912f, 1607f), vec4<u32>(0u, 95381u, 0u, 1u), false, vec3<f32>(1298f, -392f, 233f), true), Struct_2(vec4<f32>(-486f, -1086f, 889f, 843f), vec4<u32>(41219u, 0u, 1u, 137686u), false, vec3<f32>(1439f, -277f, -140f), false), u_input.c.zy, 813f), u_input.a.zwx)))), all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false))))), Struct_3(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), all(vec4<bool>(true, true, true, true))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1040f, -1282f, 484f, -632f), vec4<f32>(-157f, -1526f, -1618f, -343f)))), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1161f, 1220f, -1097f)), select(any(vec2<bool>(false, false)), true, false)), Struct_2(vec4<f32>(1f, 1f, 1f, 1f), vec4<u32>(1u, 1u, 1u, 1u), !all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1211f, -396f, 376f) + vec3<f32>(1000f, 1010f, -629f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1025f, -607f, 291f))), true), u_input.c.wx, -1062f), -1i, vec2<u32>(~(~1u), 42260u), -select(u_input.b, u_input.c.zz, select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), select(true, false, false))));
    var_0 = Struct_4(var_0.a, var_0.b, abs(_wgslsmith_dot_vec3_i32(~select(u_input.c.wwx, u_input.a.wzx, vec3<bool>(var_0.a.e, false, true)), min(max(u_input.c.xwz, u_input.c.zwz), -u_input.a.xxw))), ~vec2<u32>(var_0.b.b.b.x, ~var_0.b.b.b.x), vec2<i32>(~_wgslsmith_clamp_i32(-29974i, _wgslsmith_mult_i32(-1i, u_input.a.x), -2147483647i), -u_input.d));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.x, var_0.b.e, 1295f)))) * vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.a.d.x)), -690f, var_0.a.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1843f, var_0.a.a.x))), _wgslsmith_f_op_f32(step(var_0.a.d.x, 886f)))), var_0.b.c.a.x, -1098f));
    var_0 = Struct_4(Struct_2(var_0.b.b.a, firstLeadingBit(var_0.a.b), !(!all(vec4<bool>(true, var_0.a.c, true, var_0.b.c.e))), vec3<f32>(1998f, _wgslsmith_div_f32(var_0.b.e, _wgslsmith_f_op_f32(f32(-1f) * -905f)), _wgslsmith_f_op_f32(-422f + -547f)), true), var_0.b, u_input.a.x, vec2<u32>(4294967295u, reverseBits(var_0.d.x)), -reverseBits(vec2<i32>(var_0.c, u_input.b.x ^ 0i)));
    return _wgslsmith_mod_vec2_i32((vec2<i32>(-9547i, u_input.b.x) | firstLeadingBit(vec2<i32>(-56280i, u_input.d))) >> (var_0.d % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(~vec2<i32>(18299i, u_input.d), (u_input.c.xw & var_0.b.d) ^ (var_0.e & vec2<i32>(u_input.c.x, -1i)), -vec2<i32>(var_0.c, -27080i)));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1107f + _wgslsmith_f_op_f32(max(-975f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_div_f32(arg_2, arg_2), arg_3.c.c))))) + arg_2);
    var_0 = 589f;
    let var_1 = !(!(!any(select(vec2<bool>(true, true), arg_3.a, false))));
    let var_2 = _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(firstTrailingBit(1i), 45331i)), countOneBits(select(vec2<i32>(abs(arg_1), arg_0.x), ~u_input.a.yz, var_1)));
    var var_3 = 0i;
    return arg_3.b;
}

fn func_1(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = func_4(abs(vec2<i32>(~16268i, _wgslsmith_div_i32(arg_0, -50936i))) ^ func_2(), u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1363f)), _wgslsmith_f_op_f32(873f - _wgslsmith_f_op_f32(f32(-1f) * -1142f)), true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-369f, 516f)) * 1060f))), Struct_3(select(vec2<bool>(true, true), vec2<bool>(arg_1 <= arg_1, true), vec2<bool>(true, true)), Struct_2(vec4<f32>(-746f, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1321f), _wgslsmith_f_op_f32(round(1146f))), firstLeadingBit(vec4<u32>(arg_1, 0u, arg_1, arg_1)), select(all(vec4<bool>(false, true, true, false)), true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, 358f, 1840f)), (u_input.d | 1i) == 21491i), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(350f, 775f, 1000f, 1394f))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 69908u, arg_1)), vec4<u32>(arg_1, 0u, arg_1, 6272u)), true, vec3<f32>(_wgslsmith_f_op_f32(sign(1660f)), _wgslsmith_f_op_f32(round(247f)), _wgslsmith_f_op_f32(max(-467f, 832f))), true), u_input.a.xz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)) + 1f)));
    var var_1 = var_0.e;
    var var_2 = !(!select(vec4<bool>(var_0.c, true, var_0.c, any(vec4<bool>(false, var_0.e, var_0.c, var_0.c))), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0.c, var_0.e, var_0.e, false), var_0.e), vec4<bool>(all(vec3<bool>(false, var_0.e, true)), !var_0.e, true, var_0.e | false)));
    var_1 = true;
    var var_3 = Struct_3(vec2<bool>(all(select(var_2.wxz, !vec3<bool>(true, var_2.x, false), var_2.xzx)), true), func_4(~_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.d, 0i), reverseBits(vec2<i32>(2147483647i, 7093i))), arg_0, var_0.a.x, Struct_3(select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_0.e), any(vec4<bool>(false, var_2.x, var_2.x, false))), Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), var_0.b, false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, -952f, var_0.d.x)), true), var_0, u_input.a.zx, _wgslsmith_f_op_f32(ceil(-502f)))), Struct_2(vec4<f32>(var_0.a.x, -1260f, -551f, var_0.d.x), vec4<u32>(max(7855u, 4294967295u), 0u, ~var_0.b.x, _wgslsmith_add_u32(arg_1, arg_1)) >> (var_0.b % vec4<u32>(32u)), select(true, var_2.x, !var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1869f)), -1000f, _wgslsmith_f_op_f32(-var_0.d.x))), true), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, u_input.b.x), -(vec2<i32>(-82923i, -30239i) >> (var_0.b.xx % vec2<u32>(32u)))) ^ (vec2<i32>(min(1i, u_input.d), arg_0 ^ 2147483647i) ^ u_input.c.yy), -1072f);
    return _wgslsmith_f_op_f32(-var_0.d.x);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_div_f32(-414f, arg_1.d.x), _wgslsmith_f_op_f32(-arg_3)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_3, arg_3)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a.x, 1000f, 771f), vec3<f32>(arg_3, -956f, -1748f))))))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * 1371f) - _wgslsmith_f_op_f32(round(-2154f))), _wgslsmith_f_op_f32(f32(-1f) * -431f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - arg_0) + _wgslsmith_div_f32(arg_3, var_0.x)), var_0.x) * arg_1.a));
    let var_3 = countOneBits(firstLeadingBit(select(~arg_1.b.xzw, select(abs(vec3<u32>(1u, arg_1.b.x, arg_2)), ~arg_1.b.wxy, true), vec3<bool>(all(vec4<bool>(var_1, arg_1.c, false, arg_1.c)), any(vec3<bool>(arg_1.c, true, true)), arg_1.c))));
    var_2 = vec4<f32>(-717f, -1078f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1202f, _wgslsmith_div_f32(1212f, _wgslsmith_div_f32(var_0.x, var_0.x))) + arg_0), arg_0);
    return Struct_1(1u);
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = ~arg_2.a;
    var var_1 = Struct_4(func_4(_wgslsmith_clamp_vec2_i32(abs(max(u_input.a.wx, u_input.a.yz)), ~(vec2<i32>(u_input.b.x, -1i) ^ u_input.a.yx), u_input.a.wz), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1650f + -465f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f * -2190f))), Struct_3(vec2<bool>(false, all(vec4<bool>(false, false, false, false))), func_4(~u_input.c.xy, -20231i, _wgslsmith_f_op_f32(func_1(19373i, 1u)), Struct_3(vec2<bool>(false, false), Struct_2(vec4<f32>(601f, 1186f, 1270f, 779f), vec4<u32>(7484u, arg_2.a, arg_2.a, 93901u), false, vec3<f32>(161f, -392f, 1830f), true), Struct_2(vec4<f32>(2282f, -783f, 747f, 631f), vec4<u32>(4294967295u, arg_2.a, arg_1, arg_0.x), false, vec3<f32>(-1000f, 1117f, -1000f), true), u_input.a.zx, -229f)), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, -705f, 651f, 1000f) + vec4<f32>(-362f, -938f, -341f, -608f)), ~vec4<u32>(arg_2.a, 4837u, 31110u, arg_0.x), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(449f, -906f, -187f)), all(vec3<bool>(false, false, false))), select(-vec2<i32>(u_input.b.x, u_input.a.x), _wgslsmith_sub_vec2_i32(u_input.a.xw, u_input.c.wy), true), _wgslsmith_f_op_f32(select(-631f, _wgslsmith_f_op_f32(f32(-1f) * -821f), all(vec4<bool>(false, false, true, false)))))), Struct_3(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, all(vec2<bool>(false, false)))), Struct_2(vec4<f32>(-946f, _wgslsmith_f_op_f32(trunc(128f)), 2533f, _wgslsmith_f_op_f32(760f - 1981f)), func_4(vec2<i32>(-2147483647i, u_input.a.x), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_3(vec2<bool>(false, true), Struct_2(vec4<f32>(-784f, 1635f, 997f, -143f), vec4<u32>(14899u, 0u, arg_0.x, var_0), false, vec3<f32>(440f, 236f, 1367f), true), Struct_2(vec4<f32>(1483f, -314f, 394f, 1673f), vec4<u32>(110543u, var_0, arg_1, 1u), true, vec3<f32>(-1826f, 1133f, 962f), false), vec2<i32>(32007i, u_input.c.x), 831f)).b, -1i != _wgslsmith_sub_i32(u_input.b.x, u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(648f, 1000f, -938f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1430f, -1199f, -630f)))), min(u_input.d, -20026i) >= u_input.b.x), func_4(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x, -103i), u_input.a.x), -2147483647i, 513f, Struct_3(vec2<bool>(true, true), func_4(vec2<i32>(47120i, 1i), u_input.b.x, -297f, Struct_3(vec2<bool>(false, true), Struct_2(vec4<f32>(-1588f, 512f, 2109f, -1371f), vec4<u32>(43931u, 53171u, 53473u, 0u), true, vec3<f32>(709f, 126f, -821f), false), Struct_2(vec4<f32>(-999f, -302f, 732f, 1475f), vec4<u32>(37906u, 4294967295u, var_0, 91082u), false, vec3<f32>(1031f, 658f, 614f), true), u_input.c.xw, 916f)), func_4(u_input.c.xz, -2147483647i, -1993f, Struct_3(vec2<bool>(true, false), Struct_2(vec4<f32>(-1305f, -650f, 479f, -600f), vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.x), true, vec3<f32>(-284f, -403f, 225f), true), Struct_2(vec4<f32>(1639f, -1559f, -694f, 1126f), vec4<u32>(52918u, arg_0.x, arg_0.x, arg_1), false, vec3<f32>(322f, -1055f, 262f), false), u_input.a.zw, -1000f)), vec2<i32>(u_input.b.x, 0i), _wgslsmith_f_op_f32(trunc(1300f)))), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x) | u_input.a.xx, u_input.a.xw >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), u_input.c.zw >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), 359f), ~u_input.c.x, vec2<u32>(0u, arg_0.x), firstLeadingBit(_wgslsmith_mult_vec2_i32(~(~vec2<i32>(u_input.a.x, u_input.d)), -u_input.c.ww)));
    var_1 = Struct_4(var_1.b.c, var_1.b, 1911i, select(vec2<u32>(max(arg_0.x, 35790u) & max(95259u, 8797u), 45983u), _wgslsmith_mod_vec2_u32(abs(~arg_0.zy), var_1.d), var_1.b.a), vec2<i32>(-1i, _wgslsmith_div_i32(u_input.d, min(~var_1.e.x, ~(-64675i)))));
    let var_2 = max(var_1.b.d << (firstTrailingBit(~var_1.a.b.yx) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(select(var_1.e.x, -1i, var_1.b.a.x) >> (firstLeadingBit(4294967295u) % 32u), ~(~var_1.b.d.x)), var_1.e));
    var_1 = Struct_4(var_1.a, var_1.b, 1i, ~arg_0.yy, ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.b.d << (var_1.a.b.yx % vec2<u32>(32u)), ~vec2<i32>(12960i, var_2.x), u_input.c.yw), ~u_input.c.wy ^ u_input.a.yz));
    return Struct_4(Struct_2(var_1.b.c.a, var_1.b.c.b & vec4<u32>(_wgslsmith_add_u32(1u, 30695u), 68293u, _wgslsmith_mod_u32(1u, arg_1), firstTrailingBit(var_0)), true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1447f)), _wgslsmith_f_op_f32(min(var_1.b.b.a.x, -877f)), var_1.a.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.c.d))), !var_1.b.c.c), var_1.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_2.x ^ var_2.x, _wgslsmith_sub_i32(-1i, u_input.d)) >> (~(~4294967295u) % 32u), 16004i), ~vec2<u32>(var_1.d.x, var_1.b.b.b.x), ~vec2<i32>(_wgslsmith_sub_i32(37690i, var_1.b.d.x), ~_wgslsmith_clamp_i32(61706i, var_1.b.d.x, var_1.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = func_6(vec3<u32>(~_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(55120u, 5u)), 4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 19795u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 54882u, 0u), vec3<u32>(18728u, 72154u, 4294967295u)))), 79894u, func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-39337i, 0u)) - _wgslsmith_f_op_f32(step(-1217f, -1485f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(580f - 201f), _wgslsmith_f_op_f32(f32(-1f) * -1223f))), func_4(abs(u_input.c.xw), reverseBits(1i), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<bool>(false, true), Struct_2(vec4<f32>(-126f, -1106f, -237f, -679f), vec4<u32>(4294967295u, 1u, 79153u, 39292u), false, vec3<f32>(503f, 631f, -184f), false), Struct_2(vec4<f32>(-1328f, 779f, 485f, 1086f), vec4<u32>(1u, 0u, 66291u, 51753u), false, vec3<f32>(449f, -530f, 483f), true), vec2<i32>(-5827i, -7202i), 264f), var_0.xxy)), Struct_3(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_2(vec4<f32>(424f, 122f, 1000f, 663f), vec4<u32>(62674u, 56921u, 13010u, 37512u), true, vec3<f32>(1461f, 1006f, 2360f), true), func_4(u_input.a.yy, u_input.b.x, 162f, Struct_3(vec2<bool>(false, false), Struct_2(vec4<f32>(1497f, -728f, -1344f, -1419f), vec4<u32>(1u, 9951u, 61637u, 4294967295u), true, vec3<f32>(-424f, -420f, -1603f), false), Struct_2(vec4<f32>(931f, -665f, -1108f, 1037f), vec4<u32>(116u, 101027u, 1u, 4294967295u), true, vec3<f32>(1166f, 1355f, -1308f), true), vec2<i32>(-3940i, var_0.x), -2342f)), u_input.a.xz, _wgslsmith_f_op_f32(select(210f, -1000f, true)))), max(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(91717u, 0u, 1u), vec3<u32>(70266u, 2211u, 0u)), ~101251u), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~30766i, firstLeadingBit(1u))))));
    var_1 = func_6(~(~vec3<u32>(var_1.d.x, 87353u, 51042u)), firstLeadingBit(4294967295u), Struct_1(4294967295u));
    let var_2 = ~(-u_input.c.yx);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b.b.d - _wgslsmith_f_op_vec3_f32(-var_1.b.b.d))) + _wgslsmith_f_op_vec3_f32(-var_1.b.b.a.ywy)));
    let var_4 = func_4(var_1.e >> (_wgslsmith_add_vec2_u32(vec2<u32>(352u ^ var_1.a.b.x, ~var_1.a.b.x), ~(~var_1.d)) % vec2<u32>(32u)), var_2.x, var_3.x, Struct_3(!var_1.b.a, var_1.b.c, func_6(var_1.b.b.b.zwx, _wgslsmith_sub_u32(var_1.a.b.x, 1u) | (var_1.d.x ^ 1u), Struct_1(select(0u, var_1.a.b.x, var_1.b.c.e))).b.b, ~select(vec2<i32>(-5291i, var_0.x), func_6(vec3<u32>(35650u, 4294967295u, 4294967295u), 21735u, Struct_1(4294967295u)).e, !var_1.b.b.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-574f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_add_i32(-2147483647i, var_1.c), select(0u, 27978u, var_1.a.e)))))).a.xw;
    var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, var_4.x, 1000f), var_1.a.d, vec3<bool>(false, var_1.a.e, var_1.b.c.c)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a.a.x, var_4.x, var_1.a.a.x), vec3<f32>(var_1.a.a.x, 1000f, 1438f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1040f, var_3.x, var_4.x))))))) + _wgslsmith_f_op_vec3_f32(-var_1.a.a.wyy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_1.b.d.x, firstLeadingBit(var_1.e.x)), var_1.b.b.b.x, var_0.x, var_1.a.b.yx);
}

