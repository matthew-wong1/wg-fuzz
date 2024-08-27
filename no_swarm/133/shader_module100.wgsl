struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(arg_3.b, arg_3.e, -arg_1.xx, abs(~arg_0.x & ~6345u), arg_3.a);
    var var_1 = arg_3.a.a.x;
    var var_2 = Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.a)))), vec2<i32>(abs(_wgslsmith_add_i32(max(14784i, u_input.c.x), 11267i)), 28464i), arg_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(floor(arg_3.e.a))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.e.a)));
    let var_4 = select(select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, true))), true), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), 57277i <= _wgslsmith_div_i32(var_0.c.x, select(var_0.c.x, -17962i, true))), select(select(vec2<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, true), all(vec4<bool>(false, false, true, false))), !all(vec2<bool>(true, false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, false), vec2<bool>(false, false), true)), vec2<bool>(true, true), true), true), !vec2<bool>(var_2.d > (48843u | u_input.e), true & any(vec2<bool>(false, false))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_3.a, vec3<f32>(arg_3.e.a.x, -1231f, arg_3.e.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a - var_2.b.a))), var_2.b.a) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1495f, arg_3.b.a.x, 1033f))))));
}

fn func_2() -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(u_input.e, u_input.e, u_input.e) >> (vec3<u32>(25763u, 10768u, 40794u) % vec3<u32>(32u)), ~vec3<i32>(u_input.c.x, -3643i, 2147483647i), _wgslsmith_add_vec2_i32(u_input.d.yy, vec2<i32>(1i, u_input.a.x)), Struct_2(Struct_1(vec3<f32>(1000f, -1000f, 795f)), Struct_1(vec3<f32>(487f, -830f, -495f)), u_input.d.yy, u_input.e, Struct_1(vec3<f32>(119f, -236f, -661f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1259f, -1323f, -400f), vec3<f32>(518f, 1025f, 578f))), true)) + vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(abs(vec3<u32>(30597u, u_input.e, 34318u)), u_input.a, vec2<i32>(-22250i, u_input.b), Struct_2(Struct_1(vec3<f32>(444f, -1414f, 1041f)), Struct_1(vec3<f32>(-937f, 2257f, 1485f)), vec2<i32>(-7477i, u_input.d.x), 1u, Struct_1(vec3<f32>(1259f, -1664f, 628f))))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1389f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -785f) + _wgslsmith_f_op_f32(f32(-1f) * -1303f)))));
    var var_2 = _wgslsmith_sub_u32(~(22447u << (u_input.e % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 30681u, _wgslsmith_mod_u32(1u, u_input.e)), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 3291u, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(86871u, u_input.e, 6205u), vec3<u32>(u_input.e, 1u, u_input.e)))));
    var var_3 = Struct_2(Struct_1(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-874f, var_1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(min(161f, 208f)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec3_f32(floor(var_1.a))))), vec2<i32>(u_input.c.x, _wgslsmith_clamp_i32(-u_input.d.x | _wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, -9317i)), -2147483647i, countOneBits(_wgslsmith_div_i32(u_input.c.x, u_input.c.x)))), 643u, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_1.a.x, 511f), _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), var_1.a.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1376f, var_1.a.x, var_1.a.x) * _wgslsmith_f_op_vec3_f32(select(var_1.a, vec3<f32>(var_1.a.x, var_1.a.x, -1150f), vec3<bool>(var_0, true, var_0)))))));
    var_3 = Struct_2(var_1, Struct_1(var_1.a), vec2<i32>(reverseBits(abs(-67750i)), var_3.c.x), var_3.d, Struct_1(var_3.a.a));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    var var_0 = -vec2<i32>(16545i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.b, -1i), _wgslsmith_add_vec3_i32(u_input.d, u_input.d)), u_input.d.x);
    var_0 = ~(vec2<i32>(-1i) * -u_input.d.yz);
    let var_1 = !(true != (~_wgslsmith_mult_u32(0u, 0u) <= ~_wgslsmith_mult_u32(u_input.e, 37079u)));
    var_0 = firstLeadingBit(u_input.a.zz);
    var_0 = vec2<i32>(var_0.x, firstTrailingBit(u_input.c.x) | (i32(-1i) * -1i));
    return max(33095u, u_input.e);
}

fn func_1() -> vec2<u32> {
    let var_0 = select(true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(998f, -909f))) >= _wgslsmith_f_op_f32(ceil(473f))) | false, false);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2974f);
    let var_2 = select(abs(~vec4<u32>(abs(118725u), u_input.e, ~u_input.e, ~u_input.e)), countOneBits(vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.e) | 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), ~vec3<u32>(u_input.e, u_input.e, u_input.e)), func_4(func_2(), func_2(), _wgslsmith_div_vec4_f32(vec4<f32>(341f, 2124f, 1736f, 1000f), vec4<f32>(475f, 364f, 614f, 334f))), func_4(Struct_1(vec3<f32>(543f, 1273f, 1605f)), Struct_1(vec3<f32>(165f, -876f, 509f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 918f, 826f, -619f))))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, var_0, false, false), true), vec4<bool>(var_0, true, false, var_0))));
    var var_3 = vec2<bool>(any(!vec2<bool>(all(vec4<bool>(true, true, var_0, var_0)), var_0 & var_0)), all(vec3<bool>(var_0, all(vec3<bool>(true, false, var_0)), -33138i == -u_input.a.x)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1924f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-690f, 392f), _wgslsmith_f_op_f32(767f - 106f)))), -607f));
    return firstTrailingBit(vec2<u32>(0u, u_input.e));
}

fn func_5(arg_0: vec2<u32>) -> u32 {
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e;
    var_0 = 1u;
    let var_1 = ~firstLeadingBit(u_input.c.x);
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~firstTrailingBit(vec2<u32>(317u, u_input.e) | vec2<u32>(4294967295u, 0u)), ~select(~vec2<u32>(1u, u_input.e), ~vec2<u32>(48727u, u_input.e), true)), min(~0u, u_input.e), 74500u, ~abs(func_5(func_1())));
    var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(~(~u_input.e), select(_wgslsmith_dot_vec3_u32(var_2.xzy, var_2.xzw), 1u, all(vec2<bool>(false, true)))), ~4294967295u, ~_wgslsmith_mult_u32(var_2.x >> (61557u % 32u), 22448u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_2.wyy), firstLeadingBit(var_2.xyx)), firstLeadingBit(~vec3<u32>(var_2.x, var_2.x, 42084u)))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(50511u, var_2.x, var_2.x, 1u) << (vec4<u32>(1u, var_2.x, 4991u, var_2.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 5897u, u_input.e, u_input.e), vec4<u32>(var_2.x, 4294967295u, u_input.e, var_2.x)), vec4<u32>(var_2.x, 36647u, 7502u, u_input.e)), firstLeadingBit(vec4<u32>(u_input.e, 0u, var_2.x, 52079u)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)))) | ~(~vec4<u32>(u_input.e, 1u, 4294967295u, var_2.x)), vec4<u32>(13838u, ~(_wgslsmith_div_u32(4294967295u, u_input.e) | ~var_2.x), _wgslsmith_mult_u32(reverseBits(17124u), func_4(func_2(), func_2(), vec4<f32>(-1627f, -292f, 879f, 181f))), ~_wgslsmith_sub_u32(~u_input.e, var_2.x | u_input.e)));
    var var_3 = vec3<u32>(u_input.e, firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 9817u, 37292u, 0u), ~vec4<u32>(18481u, u_input.e, u_input.e, u_input.e)), ~vec4<u32>(u_input.e, 0u, 1u, var_2.x) | reverseBits(vec4<u32>(u_input.e, var_2.x, var_2.x, u_input.e)))), reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(1u >> (var_2.x % 32u), ~u_input.e), ~_wgslsmith_dot_vec3_u32(var_2.xxz, vec3<u32>(8421u, u_input.e, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 27079u, max(1u, u_input.e)), firstLeadingBit(~var_2.x)), var_3.x, ~select(func_4(Struct_1(vec3<f32>(-221f, 1000f, -402f)), Struct_1(vec3<f32>(-143f, -110f, -482f)), vec4<f32>(-565f, -1000f, -617f, -298f)), var_3.x >> (var_3.x % 32u), true)), -1000f, _wgslsmith_mult_vec3_i32(select(-_wgslsmith_mod_vec3_i32(u_input.a, vec3<i32>(-48220i, var_1, var_1)), vec3<i32>(1i, -2147483647i, -19657i), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), vec3<i32>(~10127i, ~_wgslsmith_div_i32(u_input.b, -2147483647i), ~(-1i) << (var_2.x % 32u))));
}

