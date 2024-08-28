struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = ~(-(i32(-1i) * -u_input.a));
    var var_1 = _wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(u_input.a, ~0i, u_input.a, u_input.a)), vec4<i32>(u_input.a, max(-u_input.a, u_input.a << (~13254u % 32u)), reverseBits(35555i), 1i << (firstTrailingBit(~0u) % 32u)));
    var_0 = -32633i;
    let var_2 = all(select(select(vec3<bool>(true, any(arg_3.yy), arg_2), !(!arg_3), arg_3), !arg_3, arg_3));
    var var_3 = Struct_1(reverseBits(u_input.a), vec2<bool>(var_2, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), arg_0)))), vec2<i32>(_wgslsmith_add_i32(u_input.a, -30346i), firstTrailingBit(_wgslsmith_add_i32(u_input.a & u_input.a, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0, -1272f, _wgslsmith_f_op_f32(select(arg_0, -282f, true)))))));
    return !vec4<bool>(!var_2, !(~6445u == _wgslsmith_dot_vec3_u32(vec3<u32>(57430u, 58403u, 47098u), vec3<u32>(62376u, 4294967295u, 21646u))), true, !select(all(arg_3.zy), var_2, select(arg_3.x, false, var_2)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = select(!vec4<bool>(!arg_3.b.x, (arg_3.b.x & false) | all(vec4<bool>(true, false, arg_3.b.x, arg_3.b.x)), false, arg_3.b.x), select(!(!vec4<bool>(arg_3.b.x, arg_3.b.x, true, arg_3.b.x)), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + arg_3.c) * -471f), arg_3.b.x, true, select(select(vec3<bool>(arg_3.b.x, arg_3.b.x, false), vec3<bool>(true, false, arg_3.b.x), vec3<bool>(arg_3.b.x, true, arg_3.b.x)), select(vec3<bool>(arg_3.b.x, true, arg_3.b.x), vec3<bool>(arg_3.b.x, false, arg_3.b.x), vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x)), vec3<bool>(false, false, arg_3.b.x))), select(select(!vec4<bool>(arg_3.b.x, arg_3.b.x, true, arg_3.b.x), !vec4<bool>(arg_3.b.x, false, arg_3.b.x, true), func_3(1534f, arg_3.b.x, arg_3.b.x, vec3<bool>(arg_3.b.x, arg_3.b.x, arg_3.b.x))), !func_3(arg_3.c, arg_3.b.x, false, vec3<bool>(true, true, arg_3.b.x)), all(vec2<bool>(true, true)))), !(!vec4<bool>(false, arg_3.b.x, arg_3.b.x, true)));
    var var_1 = vec3<u32>(1u, 1u, 1u);
    var var_2 = arg_3;
    var var_3 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(6333u, 4294967295u, var_1.x, var_1.x), vec4<u32>(var_1.x, ~8491u, 1u << (var_1.x % 32u), var_1.x)), vec4<u32>(abs(~4294967295u), var_1.x, 4294967295u, var_1.x));
    var_1 = abs(_wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(1u, var_1.x), firstTrailingBit(16774u), 0u), firstTrailingBit(vec3<u32>(var_1.x, var_1.x, reverseBits(var_1.x)))));
    return func_3(_wgslsmith_f_op_f32(-522f - _wgslsmith_f_op_f32(var_2.c - 1f)), true, select(!all(vec4<bool>(arg_3.b.x, arg_3.b.x, true, var_0.x)), var_0.x, true), !var_0.wxx).x | true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-30913i, 11650i, -(~30732i)), firstTrailingBit(_wgslsmith_mod_i32(arg_2.a << (1863u % 32u), _wgslsmith_mult_i32(17277i, -43374i))), 30208i), 47682i, arg_2.d.x);
    var_0 = vec4<i32>(_wgslsmith_sub_i32(~2147483647i, ~reverseBits(~u_input.a)), ~min(arg_2.d.x, ~(-9666i)), -(arg_1.d.x | 2147483647i), arg_1.d.x);
    return !select(select(vec4<bool>(true, func_2(vec2<f32>(arg_1.e.x, -279f), var_0.zxx, arg_0.c, arg_0), true, func_3(arg_1.e.x, false, arg_1.b.x, vec3<bool>(arg_2.b.x, arg_2.b.x, true)).x), select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), !vec4<bool>(false, arg_0.b.x, false, arg_2.b.x), !vec4<bool>(arg_2.b.x, arg_0.b.x, true, arg_0.b.x)), true), !select(func_3(-1172f, true, true, vec3<bool>(true, arg_2.b.x, true)), !vec4<bool>(arg_0.b.x, false, arg_2.b.x, false), !arg_0.b.x), arg_2.a <= select(0i, select(arg_1.d.x, -21332i, true), !arg_0.b.x));
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-firstLeadingBit(u_input.a), u_input.a, reverseBits(-2147483647i) | firstTrailingBit(arg_0)), _wgslsmith_clamp_vec3_i32(abs(firstLeadingBit(arg_2.zwz)), ~arg_2.wxx, -(~arg_2.yyw))), select(select(!select(vec2<bool>(arg_1.x, true), arg_1.xw, true), vec2<bool>(true, false), true), vec2<bool>(true, true), arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-118f * _wgslsmith_f_op_f32(min(678f, 296f))), arg_1.x)))), vec2<i32>(_wgslsmith_div_i32(-arg_2.x, u_input.a), -47883i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(926f, arg_3), -144f, arg_3))))));
    var_0 = Struct_1(1i, !func_1(Struct_1(_wgslsmith_sub_i32(arg_2.x, arg_2.x), var_0.b, _wgslsmith_f_op_f32(max(-416f, 839f)), countOneBits(vec2<i32>(0i, arg_2.x)), var_0.e), Struct_1(arg_2.x, func_3(var_0.c, true, arg_1.x, arg_1.wyx).yw, arg_3, ~var_0.d, _wgslsmith_div_vec3_f32(var_0.e, var_0.e)), Struct_1(_wgslsmith_mod_i32(59196i, var_0.d.x), var_0.b, var_0.c, var_0.d, _wgslsmith_f_op_vec3_f32(-var_0.e))).yw, arg_3, arg_2.zw, _wgslsmith_f_op_vec3_f32(-var_0.e));
    let var_1 = Struct_1(~arg_0, !var_0.b, arg_3, vec2<i32>(min(-1i, arg_2.x), min(var_0.d.x, firstTrailingBit(arg_0)) ^ 0i), var_0.e);
    var_0 = var_1;
    let var_2 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(26132u, 2361u, 18114u, 4294967295u), ~vec4<u32>(33831u, 0u, 4294967295u, 63516u)) & ~_wgslsmith_mult_u32(66677u, 0u), 1u & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4389u, 0u, 8832u), min(vec4<u32>(0u, 0u, 45258u, 0u), vec4<u32>(1u, 4294967295u, 22571u, 25752u))), ~_wgslsmith_mod_u32(firstTrailingBit(4989u), 1u), ~min(41190u, 39062u) << (select(1u, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u), true) % 32u));
    return Struct_1(arg_2.x, vec2<bool>(any(select(select(arg_1.xyw, arg_1.yzy, true), vec3<bool>(var_1.b.x, var_0.b.x, var_0.b.x), true)), any(select(vec4<bool>(arg_1.x, arg_1.x, false, false), arg_1, vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, arg_1.x))) && true), _wgslsmith_f_op_f32(-133f - var_0.e.x), vec2<i32>(-(~u_input.a), 2147483647i), _wgslsmith_f_op_vec3_f32(ceil(var_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-(~(u_input.a & ~u_input.a)), vec4<bool>(false, any(vec3<bool>(true, any(vec4<bool>(false, false, true, false)), true)), all(select(vec4<bool>(false, false, false, false), func_1(Struct_1(u_input.a, vec2<bool>(true, false), 1636f, vec2<i32>(2147483647i, -2147483647i), vec3<f32>(-1009f, 159f, 1414f)), Struct_1(12320i, vec2<bool>(true, true), 404f, vec2<i32>(8695i, u_input.a), vec3<f32>(-949f, -719f, -1240f)), Struct_1(-1i, vec2<bool>(false, false), -404f, vec2<i32>(-42949i, 0i), vec3<f32>(-802f, -1000f, 1523f))), func_1(Struct_1(u_input.a, vec2<bool>(true, true), 339f, vec2<i32>(u_input.a, 29610i), vec3<f32>(-325f, -291f, -646f)), Struct_1(u_input.a, vec2<bool>(true, true), 169f, vec2<i32>(-5659i, u_input.a), vec3<f32>(1771f, -1614f, 606f)), Struct_1(0i, vec2<bool>(false, false), 472f, vec2<i32>(u_input.a, 15645i), vec3<f32>(-1000f, 601f, 355f))))), abs(u_input.a) != abs(-68004i)), vec4<i32>(~u_input.a & u_input.a, u_input.a, 31662i, u_input.a), _wgslsmith_f_op_f32(sign(1189f)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = Struct_1(max(var_1.a ^ abs(var_1.d.x), ~u_input.a), !var_0.b, var_0.c, ~var_1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(var_1.e)))) * var_1.e), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(998f, -133f, var_0.c)))))));
    var_1 = Struct_1(_wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(-56917i, var_0.a, var_2.d.x, 2147483647i)), _wgslsmith_div_vec4_i32(min(vec4<i32>(var_0.d.x, -18485i, var_2.d.x, var_0.d.x), vec4<i32>(0i, 26638i, u_input.a, var_2.a)), -vec4<i32>(var_1.a, u_input.a, var_2.a, var_1.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, var_0.d.x, var_2.d.x), vec4<i32>(var_0.d.x, var_2.d.x, var_1.d.x, var_0.d.x), vec4<i32>(-2147483647i, var_0.a, var_1.a, 1i)), vec4<i32>(31292i, -62903i, var_1.d.x, var_1.a)), ~vec4<i32>(var_2.a, var_2.d.x, 0i, var_2.a))), var_2.b, 1425f, ~abs(max(vec2<i32>(var_0.a, var_2.d.x), var_1.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e.x, var_1.e.x, var_1.e.x)) * vec3<f32>(361f, -1000f, var_0.c)) * vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(-var_1.e.x), _wgslsmith_f_op_f32(ceil(366f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-710f, var_2.c, var_2.c) + vec3<f32>(var_2.c, 1110f, 736f)), _wgslsmith_f_op_vec3_f32(var_2.e * vec3<f32>(var_1.e.x, 381f, var_0.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.e))))));
    var_1 = var_2;
    var var_3 = ~(~max(vec4<u32>(1u, 1u, 1u, 1u), select(_wgslsmith_div_vec4_u32(vec4<u32>(81730u, 1u, 4294967295u, 1u), vec4<u32>(4018u, 1u, 4294967295u, 95550u)), ~vec4<u32>(43318u, 3403u, 4294967295u, 22524u), false)));
    let var_4 = var_0;
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xyw);
}

