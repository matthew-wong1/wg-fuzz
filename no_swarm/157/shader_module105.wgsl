struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-726f, 235f))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, arg_1)))))), Struct_1(-821f, ~vec3<i32>(-1i >> (arg_2 % 32u), arg_0, -arg_0), arg_3 ^ 23421i, firstTrailingBit(27146u)), abs(arg_3) | arg_0, Struct_2(1690f, countOneBits(~vec2<i32>(arg_3, 0i)) >> (vec2<u32>(arg_2 | 1u, reverseBits(14042u)) % vec2<u32>(32u)), Struct_1(arg_1, select(select(vec3<i32>(52353i, 48623i, 10461i), vec3<i32>(3583i, 0i, -2147483647i), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, 8363i), vec3<i32>(arg_3, -40584i, 2147483647i)), true), -23261i & arg_3, ~arg_2 << (39270u % 32u))), Struct_2(_wgslsmith_f_op_f32(1642f + arg_1), -max(vec2<i32>(arg_0, -12901i) & vec2<i32>(arg_3, 2147483647i), firstLeadingBit(vec2<i32>(arg_3, u_input.b))), Struct_1(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, -33659i, arg_0), firstLeadingBit(vec3<i32>(-27882i, -2147483647i, 1i))), u_input.b, arg_2)));
    let var_1 = !select(select(vec4<bool>(true, true, arg_3 == 1i, any(vec2<bool>(false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), true), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), false), all(vec2<bool>(true, all(vec4<bool>(false, false, false, false)))));
    let var_2 = var_0;
    let var_3 = vec4<i32>(var_2.b.c, i32(-1i) * -2892i, 5178i, -1i);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(trunc(-1312f)), vec3<i32>(49864i, ~55796i, arg_0 >> (var_2.d.c.d % 32u)), -arg_3, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(countOneBits(~u_input.a.wx), select(u_input.d.yx, vec2<u32>(var_0.e.c.d, 106941u) >> (u_input.a.zx % vec2<u32>(32u)), true)), 4294967295u));
    return var_2.c;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_3 {
    let var_0 = vec4<i32>(-(reverseBits(u_input.b) | u_input.b), ~countOneBits(-16506i), u_input.e, -u_input.e);
    let var_1 = abs(7289u);
    var var_2 = u_input.e;
    var_2 = _wgslsmith_add_i32(u_input.e, abs(func_3(select(var_0.x, var_0.x, !arg_0), 1172f, _wgslsmith_sub_u32(abs(1u), u_input.c), -2147483647i >> (countOneBits(var_1) % 32u))));
    var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(-_wgslsmith_add_i32(u_input.b, u_input.b), min(_wgslsmith_div_i32(-41374i, -2147483647i), _wgslsmith_sub_i32(u_input.b, -31954i))), var_0.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.zz, var_0.wx), u_input.b) | vec2<i32>(1i, 1i), var_0.xx ^ vec2<i32>(u_input.b, -1i), vec2<i32>(0i, 19332i)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, _wgslsmith_f_op_f32(-792f - arg_1)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1393f, arg_1) + vec2<f32>(arg_1, arg_1)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2176f, -886f)))) - vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1)), 688f)), Struct_1(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, -1i, u_input.e)) | -vec3<i32>(0i, var_0.x, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 32661i, -1i), vec3<i32>(u_input.e, -1i, 0i))), select(_wgslsmith_mod_i32(min(u_input.e, u_input.b), var_0.x), var_0.x ^ 1i, -var_0.x >= (-2147483647i >> (u_input.a.x % 32u))), u_input.a.x), -(~min(var_0.x & -3723i, func_3(1i, 684f, 25417u, var_0.x))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1)))), ~(~var_0.xx), Struct_1(arg_1, countOneBits(max(var_0.xyw, var_0.zxy)), 2147483647i, _wgslsmith_mod_u32(min(9705u, u_input.a.x), ~4294967295u))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1)), -var_0.yy, Struct_1(-885f, var_0.yyy, _wgslsmith_sub_i32(3390i, var_0.x) << (var_1 % 32u), 1u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_4 {
    var var_0 = all(vec4<bool>(any(!vec2<bool>(arg_1.x, arg_1.x)), false, false, _wgslsmith_add_i32(arg_3.e.c.b.x, 1i) < _wgslsmith_div_i32(arg_2.x, 12180i))) || any(arg_1);
    let var_1 = func_2(!arg_1.x, arg_3.b.a).d;
    var var_2 = func_2(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1082f))))).e.c;
    var_0 = arg_1.x;
    let var_3 = func_2(true, _wgslsmith_div_f32(-342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -220f) + _wgslsmith_f_op_f32(step(func_2(arg_1.x, -764f).b.a, -1234f))))).e.c;
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(422f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f - var_1.c.a) * _wgslsmith_f_op_f32(-var_1.a))), 2587f));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    let var_1 = func_4(~vec3<u32>(~_wgslsmith_sub_u32(8145u, arg_0), ~arg_0, 0u), vec2<bool>(true, true), vec3<i32>(-2147483647i, u_input.e, -690i), func_2(false, -1423f));
    let var_2 = select(u_input.d, reverseBits(u_input.d), !(!select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), u_input.d.x < 1u)));
    var var_3 = !vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), true, select(true & (10046i <= u_input.b), select(-20684i <= u_input.b, all(vec4<bool>(true, false, false, true)), u_input.e >= 56030i), !all(vec4<bool>(false, false, false, true))));
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-881f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1185f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1077f) - -877f) - _wgslsmith_f_op_f32(func_1(28026u, Struct_4(vec2<f32>(757f, 1314f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1000f, func_2(true, -557f).e.c.a)), _wgslsmith_div_f32(-1522f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 179f)))))), _wgslsmith_f_op_f32(1767f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f + -199f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -925f, var_0.x, var_0.x) * vec4<f32>(-1263f, 559f, var_0.x, -1109f)) * _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 580f, var_0.x, -709f), vec4<f32>(233f, 194f, var_0.x, 2096f))), vec4<f32>(_wgslsmith_f_op_f32(max(-776f, -1187f)), _wgslsmith_f_op_f32(f32(-1f) * -423f), var_0.x, -173f), (u_input.e < -1i) == any(vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(214f, var_0.x, -1231f, -726f) - vec4<f32>(-551f, var_0.x, -755f, var_0.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(249f, var_0.x, var_0.x, 950f), vec4<f32>(var_0.x, var_0.x, 2050f, var_0.x), true)))), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1025f, 1122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(658f + 861f) + var_0.x), var_0.x)));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, _wgslsmith_div_f32(var_1, _wgslsmith_div_f32(func_4(u_input.a.xzx, vec2<bool>(false, true), vec3<i32>(-1i, u_input.e, u_input.e), Struct_3(var_0.yx, Struct_1(var_0.x, vec3<i32>(44873i, u_input.b, u_input.b), 0i, u_input.a.x), 2147483647i, Struct_2(-893f, vec2<i32>(2147483647i, u_input.b), Struct_1(var_1, vec3<i32>(u_input.b, u_input.e, u_input.b), 69561i, u_input.d.x)), Struct_2(-1006f, vec2<i32>(2147483647i, -1i), Struct_1(var_1, vec3<i32>(24147i, -33554i, u_input.e), 1i, u_input.a.x)))).a.x, 168f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(true, -102f).a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(var_1 * var_0.x)) * _wgslsmith_f_op_f32(-1495f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), 1527f));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1, var_0.x, 511f) + vec4<f32>(var_1, var_1, var_1, var_1))))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-201f, var_0.x, var_0.x, 1746f) - vec4<f32>(var_0.x, 595f, -1630f, -354f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x);
}

