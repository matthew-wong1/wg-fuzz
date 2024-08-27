struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1094f)), arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.b), 769f)))), arg_1.a.x, arg_3.x, vec3<bool>(true, !(!(!arg_3.x)), false));
    var var_1 = u_input.a;
    var_0 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.wzw)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.x, 255f, arg_1.a.x), _wgslsmith_f_op_vec3_f32(var_0.a.wwy + var_0.a.yzx), arg_3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(521f)), arg_1.b, var_0.a.x) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.zzw), vec3<f32>(-152f, 1355f, -850f)))));
    return vec3<bool>(!all(arg_1.d.xy), true, ((_wgslsmith_clamp_i32(u_input.e, -2147483647i, u_input.e) & u_input.e) >= countOneBits(-1i)) && var_0.d.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = !(!func_3(vec4<bool>(true, arg_1.c && true, arg_1.d.x, arg_1.c), arg_1, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.a.x, 4294967295u), u_input.d), func_3(!vec4<bool>(true, arg_1.c, false, false), Struct_2(arg_1.a, arg_1.a.x, false, arg_1.d), u_input.d, arg_1.d)));
    let var_1 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(arg_1.c, false, false))));
    var var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(2050f))));
    var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_3.a, var_2.a)), var_3));
    return vec4<bool>(true, false, !var_0.x, arg_1.c);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> f32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-arg_0.a.wyy), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 187f, arg_1.a, arg_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -391f, arg_1.a, 1710f)) + arg_0.a)), -797f, any(vec4<bool>(all(arg_0.d.yz), false, true, all(vec2<bool>(false, true)))), !select(func_3(vec4<bool>(arg_2, true, true, arg_0.d.x), Struct_2(vec4<f32>(-1389f, arg_1.a, 703f, arg_0.a.x), arg_1.a, arg_0.c, arg_0.d), vec3<u32>(11658u, u_input.a.x, 107871u), vec3<bool>(false, arg_0.d.x, true)), arg_0.d, 26856u <= u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(321f - arg_0.a.x)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-190f, arg_0.a.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(995f + -365f) - 1146f)))));
    var var_1 = true;
    var_1 = true;
    var var_2 = -7026i;
    var var_3 = _wgslsmith_f_op_f32(-arg_1);
    return Struct_2(vec4<f32>(var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -948f)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, arg_0.b)))), 156f), var_0, any(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-399f, var_0, arg_0.b), vec3<f32>(arg_1, var_0, 2155f))), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))), Struct_1(_wgslsmith_f_op_f32(arg_1 + 589f))).xxz), arg_0.d);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.d.xy;
    var_0 = !vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -212f), arg_0.a.x)) >= arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.b))) >= arg_0.a.x);
    var var_1 = ~(-(-vec3<i32>(u_input.e, 2147483647i, u_input.e) & ~_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.e), vec3<i32>(u_input.e, u_input.e, -2147483647i))));
    var_0 = select(vec2<bool>(true, true), !func_5(arg_0, _wgslsmith_f_op_f32(func_2(Struct_2(arg_0.a, arg_0.a.x, false, arg_0.d), Struct_1(arg_0.b), true, firstTrailingBit(vec2<i32>(2147483647i, u_input.e)))), ~var_1.x | ~var_1.x).d.xy, var_0.x);
    var var_2 = var_1.x;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.a), func_5(func_5(func_5(func_5(arg_0, arg_0.b, u_input.e), 1649f, u_input.e), _wgslsmith_f_op_f32(f32(-1f) * -1348f), var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-538f))))), (u_input.e ^ _wgslsmith_div_i32(var_1.x, -26661i)) & -(var_1.x & var_1.x)).a.x, u_input.e > ~u_input.e, !func_3(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, arg_0.c, var_0.x), true), func_4(arg_0.a.www, Struct_2(arg_0.a, -240f, arg_0.d.x, arg_0.d), arg_0.a.x, Struct_1(arg_0.a.x)), false), arg_0, abs(u_input.d), !vec3<bool>(arg_0.c, true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: vec4<u32>) -> bool {
    let var_0 = arg_0;
    let var_1 = var_0;
    let var_2 = func_6(func_5(Struct_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(arg_1, -837f, arg_2, vec3<bool>(true, arg_2, false)), arg_0, arg_2, vec2<i32>(-60243i, u_input.e)))), true, select(func_3(vec4<bool>(false, arg_2, arg_2, false), Struct_2(vec4<f32>(-1203f, var_1.a, 1110f, 1183f), var_0.a, true, vec3<bool>(false, arg_2, arg_2)), u_input.c.xzx, vec3<bool>(true, false, arg_2)), !vec3<bool>(arg_2, true, false), !vec3<bool>(false, arg_2, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(182f, -824f, 1000f, 459f), -326f, false, vec3<bool>(arg_2, arg_2, arg_2)), arg_0, arg_2, vec2<i32>(u_input.e, u_input.e)))))), 0i));
    let var_3 = func_6(Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - var_0.a) * 1357f)), (~u_input.e < u_input.e) & select(true, arg_2 == arg_2, true), !func_5(var_2, arg_1.x, i32(-1i) * -2147483647i).d));
    let var_4 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-592f - _wgslsmith_f_op_f32(280f - arg_1.x))), arg_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), var_0.a))), var_2.b, _wgslsmith_f_op_f32(-var_1.a) < -726f, !func_3(vec4<bool>(all(var_2.d), true, func_3(vec4<bool>(arg_2, true, arg_2, false), var_3, arg_3.wzy, vec3<bool>(var_3.d.x, var_2.c, var_3.d.x)).x, any(vec4<bool>(true, false, true, false))), var_2, countOneBits(~u_input.a.yww), !var_3.d));
    return func_4(vec3<f32>(-519f, -896f, _wgslsmith_f_op_f32(trunc(var_1.a))), func_6(func_5(func_5(Struct_2(var_3.a, -1627f, false, var_4.d), var_4.a.x, 1i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(var_4.a.x + var_0.a))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -5703i, 8508i, 2147483647i), vec4<i32>(-2147483647i, -1i, -20436i, u_input.e)) << (90167u % 32u))), arg_1.x, Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(abs(-474f))))).x;
}

fn func_7(arg_0: Struct_2, arg_1: f32, arg_2: vec4<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(192f)), _wgslsmith_f_op_f32(abs(arg_1))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_0.a.zy - vec2<f32>(_wgslsmith_f_op_f32(-1141f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<f32>(396f, 165f, -1891f, arg_1), 318f, true, arg_0.d), Struct_1(arg_0.b), false, vec2<i32>(u_input.e, u_input.e))) * -1053f)), _wgslsmith_f_op_f32(func_2(func_6(Struct_2(arg_0.a, var_0.x, true, arg_2.yyy)), Struct_1(_wgslsmith_f_op_f32(func_2(arg_0, Struct_1(1060f), false, vec2<i32>(u_input.e, u_input.e)))), func_6(arg_0).d.x & arg_0.c, max(~vec2<i32>(41824i, u_input.e), -vec2<i32>(-20695i, -41115i))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * -265f))) + _wgslsmith_div_f32(-1110f, var_0.x)));
    var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_1));
    var var_3 = select(func_5(func_5(arg_0, _wgslsmith_div_f32(1f, var_0.x), u_input.e), arg_1, 2147483647i).d, arg_2.yyz, false);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(func_7(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-565f, 1000f, 1003f, -1914f))), -701f, true, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 2064f, vec4<bool>(select(4294967295u >= u_input.b, false, 0u > u_input.a.x), true, true, func_1(Struct_1(-315f), vec4<f32>(278f, 539f, 749f, 327f), true, u_input.c) | true), countOneBits(~(~u_input.a))), _wgslsmith_dot_vec3_i32(abs(~max(vec3<i32>(1i, -1i, u_input.e), vec3<i32>(41725i, 39863i, u_input.e))), -vec3<i32>(~0i, u_input.e, 1i)), min(u_input.e, _wgslsmith_sub_i32(select(u_input.e, u_input.e, false), _wgslsmith_mod_i32(-62691i, -2147483647i)) & -u_input.e));
    var_0 = select(vec3<i32>(u_input.e, -(~1i), 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, i32(-1i) * -19565i, var_0.x), firstLeadingBit(vec3<i32>(var_0.x, u_input.e, var_0.x) & vec3<i32>(u_input.e, u_input.e, u_input.e)) | vec3<i32>(2147483647i, ~var_0.x, var_0.x), vec3<i32>(-1i, _wgslsmith_clamp_i32(-2147483647i, -u_input.e, select(-54830i, var_0.x, true)), -2147483647i)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), func_6(Struct_2(vec4<f32>(699f, -662f, 784f, 1423f), 936f, false, vec3<bool>(true, false, true))).d));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(797f, -787f))) - _wgslsmith_f_op_f32(-1054f + 947f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f + 991f)), _wgslsmith_f_op_f32(f32(-1f) * -2328f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f)), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2197f, -1079f, -854f, -181f) - vec4<f32>(295f, -993f, -766f, 1112f)) - vec4<f32>(-1787f, 586f, 590f, 382f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1111f, -1800f, 1037f, 583f) * vec4<f32>(-2497f, 222f, -333f, -304f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-867f, -941f, -1598f, -994f)))))));
    let var_3 = vec4<i32>(31983i, -22859i, 1i, abs(-5141i)) & select(vec4<i32>(_wgslsmith_add_i32(u_input.e & 33045i, var_0.x), var_0.x ^ 1i, _wgslsmith_mod_i32(var_0.x, ~33585i), 0i), reverseBits(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, 34141i, 10592i, u_input.e), -vec4<i32>(var_0.x, u_input.e, u_input.e, var_0.x), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.e, u_input.e, -2147483647i), vec4<i32>(var_0.x, var_0.x, -24818i, 71507i)))), func_5(func_6(Struct_2(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x, false, vec3<bool>(false, false, false))), 617f, max(select(1i, 1i, false), ~u_input.e)).d.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(770f - -455f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_f32(-var_2.x)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -1845f), func_3(vec4<bool>(false, true, true, true), func_6(Struct_2(vec4<f32>(-174f, -401f, var_2.x, var_2.x), var_2.x, true, vec3<bool>(false, false, true))), u_input.d << (vec3<u32>(u_input.a.x, 1u, 4810u) % vec3<u32>(32u)), vec3<bool>(true, false, true)).x))), reverseBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a.x, u_input.c.x, 1u, u_input.c.x), u_input.a, true), vec4<u32>(107358u, u_input.a.x, u_input.d.x, u_input.b)))), -_wgslsmith_dot_vec2_i32(var_3.wx, -countOneBits(var_3.ww)), -(~var_3.xxw), ~vec2<u32>(min(u_input.c.x, 0u), _wgslsmith_clamp_u32(7808u ^ u_input.a.x, _wgslsmith_div_u32(1u, 1u), u_input.c.x >> (u_input.c.x % 32u))));
}

