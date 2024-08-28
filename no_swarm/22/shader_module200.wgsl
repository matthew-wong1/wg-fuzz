struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1611f;

var<private> global1: vec2<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> i32 {
    global1 = select(vec2<bool>(global1.x, false), vec2<bool>(false, global1.x | false), u_input.c != (i32(-1i) * -1i));
    var var_0 = arg_0;
    let var_1 = true & global1.x;
    global1 = vec2<bool>(true, !(!all(vec2<bool>(var_1, false)) & global1.x));
    var var_2 = var_1;
    return _wgslsmith_sub_i32(countOneBits(abs(u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(22850i, 0i), vec2<i32>(u_input.c << (_wgslsmith_mult_u32(33174u, 1u) % 32u), ~(~0i))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    let var_0 = -(~abs(vec4<i32>(~1i, func_3(u_input.b, 1u), u_input.c, 0i)));
    global0 = 1f;
    global1 = vec2<bool>(all(vec3<bool>(!any(vec3<bool>(false, true, false)), select(true, false & global1.x, any(vec4<bool>(arg_0.x, false, false, arg_0.x))), arg_0.x)), true);
    var var_1 = select(vec3<bool>(arg_0.x, !(!arg_0.x & any(vec4<bool>(arg_0.x, true, true, arg_0.x))), true || global1.x), select(vec3<bool>(global1.x, false, global1.x), select(vec3<bool>(arg_0.x, all(vec4<bool>(true, arg_0.x, false, true)), false), select(vec3<bool>(false, arg_0.x, global1.x), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(false, true, arg_0.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, arg_0.x))), all(!vec4<bool>(arg_0.x, false, arg_0.x, true))), vec3<bool>(u_input.d >= select(u_input.c, 46890i, false), arg_0.x || global1.x, select(global1.x, true, false))), true);
    global0 = _wgslsmith_div_f32(-2862f, _wgslsmith_f_op_f32(675f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(119f, -1474f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(2665f, -695f)), _wgslsmith_f_op_f32(f32(-1f) * -870f))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1113f - 2992f) + 1000f), 1000f))));
}

fn func_1() -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(789f * _wgslsmith_f_op_f32(step(-429f, _wgslsmith_f_op_f32(1775f - -1225f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec2<bool>(true, true), vec2<bool>(true, true), global1.x)))));
    let var_0 = -(vec4<i32>(-49109i, 1i | u_input.c, _wgslsmith_add_i32(1i, u_input.c), 24063i) << ((~vec4<u32>(4294967295u, u_input.e, 4294967295u, u_input.b.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.b.x, u_input.e, u_input.e, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, u_input.e, u_input.a, 0u), firstLeadingBit(vec4<u32>(u_input.e, 62063u, 41223u, u_input.a)), all(vec4<bool>(false, global1.x, global1.x, global1.x))) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 9557u, u_input.b.x, u_input.a), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), ~(reverseBits(vec4<u32>(u_input.a, 4294967295u, 20270u, 4294967295u)) << (~vec4<u32>(u_input.b.x, 70187u, 8969u, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!vec2<bool>(false, global1.x)))))) + -375f);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(1001f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1092f, 762f)) + _wgslsmith_f_op_f32(468f - 2468f)))))));
    global0 = var_1;
    return 1i;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(u_input.c, false);
    var var_1 = !vec2<bool>(var_0.b, all(!select(vec4<bool>(false, true, true, true), vec4<bool>(var_0.b, false, arg_1.b, arg_1.b), true)));
    let var_2 = Struct_5(Struct_4(vec3<bool>(!all(vec2<bool>(true, arg_1.b)), global1.x, all(vec3<bool>(false, false, true))), _wgslsmith_mult_vec2_u32(~arg_0, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, arg_0.x))), -8412i, vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1798f, 1303f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -222f))), true && var_0.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-277f, -1350f) + vec2<f32>(555f, -875f)) + vec2<f32>(-749f, 375f))))), Struct_2(~(-3844i), !all(vec4<bool>(arg_1.b, arg_1.b, global1.x, true))), _wgslsmith_f_op_f32(func_2(vec2<bool>(!any(vec2<bool>(arg_1.b, var_0.b)), any(vec4<bool>(var_0.b, true, true, true))))), !vec2<bool>(true, var_1.x));
    let var_3 = u_input.b.x;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-113f, var_2.b.x, var_2.a.d.x), vec3<f32>(1060f, 331f, var_2.d), false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, var_2.b.x, -234f) + vec3<f32>(597f, 1741f, -852f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.x - -799f), var_2.a.d.x, _wgslsmith_f_op_f32(236f - -900f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-870f, 818f, var_2.b.x)))))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.a.d.x, var_2.b.x, var_2.d), vec3<f32>(var_2.a.d.x, var_2.b.x, 2115f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, -149f, var_2.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-279f, var_2.b.x, var_2.d) - vec3<f32>(var_2.d, -1839f, -1363f)))), true | (5201u == arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-773f, var_2.a.d.x, true)), var_2.d, _wgslsmith_f_op_f32(-var_2.d))))));
    return vec4<bool>(false, true, all(select(select(select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, global1.x, var_0.b, var_2.c.b), false), !vec4<bool>(var_0.b, var_0.b, false, arg_1.b), true), !select(vec4<bool>(false, false, arg_1.b, false), vec4<bool>(var_1.x, var_1.x, global1.x, true), vec4<bool>(true, var_0.b, var_1.x, true)), !select(vec4<bool>(var_2.a.a.x, var_0.b, true, var_2.c.b), vec4<bool>(false, true, arg_1.b, var_2.a.a.x), false))), all(var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<u32>(~min(u_input.e, u_input.e), ~firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.e)))), Struct_2(-_wgslsmith_add_i32(func_1(), _wgslsmith_mult_i32(u_input.c, 0i)), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(551f, -930f, -1505f) * vec3<f32>(-284f, -1057f, 282f)), vec3<f32>(-577f, 527f, 648f)) + vec3<f32>(_wgslsmith_f_op_f32(420f * 662f), 1701f, _wgslsmith_f_op_f32(min(-2313f, 211f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1672f, -1348f, 985f))), vec3<f32>(1f, 1f, 1f), select(var_0.xyw, var_0.xyy, var_0.yxz))), vec3<f32>(1714f, _wgslsmith_f_op_f32(trunc(2226f)), -263f), !(!var_0.yyz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1245f), 929f, _wgslsmith_f_op_f32(-1307f * 216f)))));
    var var_2 = -_wgslsmith_div_i32(~_wgslsmith_add_i32(u_input.d, 2147483647i), -_wgslsmith_mult_i32(2147483647i, u_input.c)) == u_input.d;
    let var_3 = Struct_5(Struct_4(select(vec3<bool>(global1.x, true, var_0.x), var_0.wxw, _wgslsmith_dot_vec2_i32(vec2<i32>(48487i, -52331i), vec2<i32>(8846i, 19486i)) != _wgslsmith_dot_vec3_i32(vec3<i32>(30917i, u_input.d, u_input.c), vec3<i32>(u_input.d, u_input.d, 0i))), u_input.b.zx, 8187i, var_1.xz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + vec2<f32>(var_1.x, -404f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -1087f) + vec2<f32>(-1312f, -1790f))) - var_1.xy) * vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))))), Struct_2(u_input.d, u_input.c < 2147483647i), _wgslsmith_f_op_f32(func_2(vec2<bool>(any(var_0.zwy) | (u_input.e < 25607u), global1.x))), vec2<bool>(any(vec4<bool>(func_4(vec2<u32>(62613u, u_input.e), Struct_2(u_input.c, var_0.x)).x, global1.x, true, any(var_0.zxz))), global1.x));
    global0 = _wgslsmith_f_op_f32(-832f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1992f, -672f))))));
    let var_4 = countOneBits(var_3.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(-8311i, _wgslsmith_mod_vec3_i32(vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_4, var_4, u_input.d, var_3.c.a), vec4<i32>(var_4, var_4, var_4, var_4))), func_3(u_input.b, u_input.a) >> (_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(var_3.a.b.x, 7032u, var_3.a.b.x)) % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4, 0i, u_input.c), ~vec3<i32>(var_3.a.c, u_input.c, -1i))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -9123i, var_4) ^ ~vec3<i32>(-1i, -1i, var_3.c.a), _wgslsmith_add_vec3_i32(-vec3<i32>(7282i, var_3.a.c, -13949i), select(vec3<i32>(var_4, var_3.c.a, -1804i), vec3<i32>(var_3.c.a, u_input.d, u_input.c), true)))), ~u_input.b.x);
}

