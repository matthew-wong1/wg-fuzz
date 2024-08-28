struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>) -> bool {
    let var_0 = vec4<bool>(!(!arg_0), all(select(select(global0.zz, select(global0.xy, global0.yx, false), global0.x | global0.x), !global0.zy, global0.x)), !global0.x, false);
    global0 = !var_0.xwy;
    global0 = select(select(var_0.yyw, vec3<bool>(true, !arg_0, !var_0.x), vec3<bool>(var_0.x, any(!vec3<bool>(true, arg_0, arg_0)), true)), vec3<bool>(true, true, false), vec3<bool>(all(!global0.yz), !(!select(false, global0.x, true)), var_0.x));
    global0 = vec3<bool>(arg_0, arg_0, all(!select(var_0, !var_0, select(var_0, vec4<bool>(var_0.x, true, false, true), vec4<bool>(arg_0, global0.x, var_0.x, true)))));
    global0 = vec3<bool>(all(vec3<bool>(arg_0, global0.x, true)), !any(var_0.zyz), true != all(!select(var_0.wz, var_0.yw, arg_0)));
    return arg_0;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<u32>) -> vec3<bool> {
    let var_0 = Struct_1(arg_2.x, -1i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-126f, 552f), vec2<f32>(-354f, _wgslsmith_div_f32(_wgslsmith_div_f32(2049f, arg_1), _wgslsmith_f_op_f32(-arg_1))), vec2<bool>(func_3(true, vec3<i32>(u_input.b, 2147483647i, 74401i), vec4<i32>(u_input.b, u_input.a, -25541i, -2147483647i) >> (vec4<u32>(2503u, arg_2.x, 1u, arg_2.x) % vec4<u32>(32u))), global0.x))), ~u_input.a);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(155f)))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * var_0.c.x)))));
    var var_2 = any(vec2<bool>(global0.x, global0.x));
    var var_3 = abs(u_input.b);
    var var_4 = Struct_1(arg_0.x, -62665i, var_0.c, 2735i);
    return select(select(vec3<bool>(any(!vec3<bool>(false, false, global0.x)), true, global0.x), select(vec3<bool>(global0.x, select(global0.x, global0.x, global0.x), any(vec2<bool>(false, global0.x))), !(!vec3<bool>(global0.x, true, global0.x)), any(vec2<bool>(global0.x, global0.x))), select(vec3<bool>(true, global0.x, all(vec2<bool>(true, global0.x))), select(!vec3<bool>(global0.x, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false), vec3<bool>(global0.x, global0.x, true)), select(vec3<bool>(false, false, global0.x), vec3<bool>(true, true, false), vec3<bool>(false, global0.x, global0.x))), vec3<bool>(arg_0.x <= arg_2.x, true, 19254u <= var_0.a))), vec3<bool>(5662u >= _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_0, arg_0), ~vec2<u32>(31631u, 1u)), true, false), select(vec3<bool>(any(vec3<bool>(true, true, true)), global0.x, !global0.x), select(vec3<bool>(true, false, global0.x && global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(select(global0.x, true, false), true, true)), true));
}

fn func_1(arg_0: vec3<f32>) -> vec3<u32> {
    global0 = !select(select(vec3<bool>(true, true, true), select(!vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, false), false), true), !vec3<bool>(global0.x, 9264u <= u_input.c.x, u_input.d > 0u), !(!vec3<bool>(true, true, global0.x)));
    global0 = select(select(!(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, global0.x))), func_2(vec2<u32>(u_input.d, min(0u, u_input.d)), _wgslsmith_f_op_f32(-arg_0.x), u_input.c), !select(!vec3<bool>(true, global0.x, global0.x), !vec3<bool>(global0.x, global0.x, global0.x), all(vec3<bool>(true, true, true)))), vec3<bool>(global0.x & (u_input.b == -63513i), global0.x, global0.x), global0.x);
    var var_0 = Struct_1(u_input.c.x, ~(-2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.zz))) * arg_0.xx), u_input.b);
    let var_1 = Struct_1(abs(~abs(var_0.a)), var_0.d, _wgslsmith_f_op_vec2_f32(sign(arg_0.xz)), abs(_wgslsmith_sub_i32(-29436i, u_input.a >> (u_input.d % 32u)) << (~1u % 32u)));
    global0 = !(!vec3<bool>(!global0.x, abs(-19818i) <= (7802i | var_0.d), true));
    return vec3<u32>(~_wgslsmith_mod_u32(u_input.c.x, 4294967295u), ~select(19294u, 0u, ~4180u != reverseBits(var_1.a)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_add_u32(u_input.c.x, _wgslsmith_add_u32(var_1.a, ~u_input.d)), var_0.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    let var_0 = min(firstLeadingBit(_wgslsmith_clamp_vec3_i32(-reverseBits(vec3<i32>(u_input.b, arg_2.d, -1i)), abs(vec3<i32>(u_input.a, arg_2.d, 2147483647i)) & (vec3<i32>(0i, 1i, -1i) & vec3<i32>(-3029i, -33167i, arg_2.b)), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -2147483647i), vec3<i32>(81793i, 1525i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_2.b, -30520i, u_input.a), vec3<i32>(u_input.b, 2147483647i, u_input.a))))), _wgslsmith_div_vec3_i32(~vec3<i32>(-76003i, arg_2.b, u_input.a) | reverseBits(min(vec3<i32>(arg_2.d, arg_2.b, 60138i), vec3<i32>(-1i, -2147483647i, 1i))), select(~vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-7553i, arg_2.b, u_input.b), firstTrailingBit(arg_3) < reverseBits(74459u))));
    let var_1 = vec2<i32>(u_input.b, u_input.a);
    global0 = select(vec3<bool>(any(global0.zz), !(_wgslsmith_f_op_f32(-455f - 139f) != arg_2.c.x), !(_wgslsmith_clamp_u32(0u, 4294967295u, 28085u) < 4294967295u)), !vec3<bool>(_wgslsmith_div_f32(arg_2.c.x, 1460f) <= _wgslsmith_f_op_f32(sign(arg_1)), true, true), global0.x);
    let var_2 = select(!select(!select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, global0.x, global0.x), global0.x), select(select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), false), vec4<bool>(false, global0.x, global0.x, true), select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, true))), !global0.x), vec4<bool>(func_2(~vec2<u32>(1u, arg_2.a), _wgslsmith_f_op_f32(trunc(680f)), firstLeadingBit(func_1(vec3<f32>(-775f, -1299f, -1367f)))).x, all(vec4<bool>(true, global0.x, 1i > u_input.b, global0.x)), false, any(vec2<bool>(global0.x, arg_2.d != u_input.a))), select(vec4<bool>(true, (var_1.x == u_input.a) & true, global0.x, all(select(vec2<bool>(true, true), global0.xz, global0.x))), !(!select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, false))), global0.x));
    let var_3 = (i32(-1i) * -arg_2.b) << (_wgslsmith_div_u32(u_input.d, firstLeadingBit(0u)) % 32u);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * 716f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(reverseBits(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.yz)), u_input.c.zy), ~u_input.c.xz | vec2<u32>(abs(u_input.c.x), 47928u)));
    let var_1 = Struct_1(~83007u, 4046i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(vec3<u32>(u_input.d, u_input.d, 39040u) | func_1(vec3<f32>(101f, -643f, -679f)), -1000f, Struct_1(firstTrailingBit(0u), abs(u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 784f)), i32(-1i) * -58084i), max(_wgslsmith_mod_u32(u_input.d, 7932u), 29445u))), vec2<f32>(1060f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1325f))))), 1i);
    global0 = select(vec3<bool>(true, global0.x, all(select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(true, false, false, true)))), !(!(!vec3<bool>(global0.x, global0.x, global0.x))), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(u_input.c, var_1.c.x, Struct_1(0u, u_input.b, var_1.c, -46432i), var_1.a)).x, var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(u_input.c, 1000f, var_1, var_1.a)).x), -934f, -915f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, -853f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(272f, var_1.c.x, var_1.c.x, var_1.c.x), vec4<f32>(-716f, var_1.c.x, -584f, var_1.c.x), false))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, 3107f, var_1.c.x, 273f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 544f, var_1.c.x, 732f)))))));
    let var_3 = Struct_1(~_wgslsmith_mod_u32(var_1.a, var_1.a), u_input.a >> (1u % 32u), vec2<f32>(_wgslsmith_div_f32(var_1.c.x, -668f), _wgslsmith_f_op_f32(1772f * var_2.x)), -_wgslsmith_mod_i32(i32(-1i) * -10365i, 38378i));
    var_0 = countOneBits(func_1(var_2.wxz).x);
    let var_4 = vec4<f32>(1754f, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-1000f - -637f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)), var_2.x), _wgslsmith_f_op_f32(step(var_2.x, var_3.c.x)));
    var var_5 = Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(31517u, var_3.a), reverseBits(vec2<u32>(var_1.a, 4294967295u)))) & ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, var_3.a, 52981u), vec4<u32>(15321u, u_input.c.x, 39771u, 19870u))), _wgslsmith_clamp_i32(firstLeadingBit(var_3.d), -1i, 37976i), vec2<f32>(_wgslsmith_f_op_vec2_f32(func_4((vec3<u32>(57201u, u_input.d, 8754u) << (vec3<u32>(var_3.a, 0u, 1u) % vec3<u32>(32u))) << ((vec3<u32>(var_1.a, var_1.a, 28923u) | u_input.c) % vec3<u32>(32u)), -569f, var_3, firstLeadingBit(var_1.a) & func_1(vec3<f32>(var_4.x, -772f, 726f)).x)).x, _wgslsmith_f_op_f32(round(var_1.c.x))), -_wgslsmith_dot_vec4_i32(-vec4<i32>(54516i, 2147483647i, var_3.b, var_3.d), countOneBits(firstTrailingBit(vec4<i32>(var_1.d, -1i, var_3.b, var_3.d)))));
    global0 = func_2(max(~u_input.c.xy, u_input.c.yz), 456f, vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 0u), ~var_1.a, _wgslsmith_div_u32(0u, ~(~1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(select(vec2<i32>(-24018i, _wgslsmith_add_i32(var_3.d, var_1.d)), vec2<i32>(u_input.b, 7212i ^ var_1.b), !global0.yz), -(~select(vec2<i32>(var_3.b, var_5.b), vec2<i32>(var_1.b, -1i), true))), -1000f, -13151i);
}

