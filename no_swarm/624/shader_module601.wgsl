struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1000f)) - _wgslsmith_f_op_f32(max(arg_3.a.b.x, 149f))));
    var var_1 = max(~_wgslsmith_mod_vec2_u32(reverseBits(u_input.d.xx >> (vec2<u32>(u_input.b, u_input.c.x) % vec2<u32>(32u))), ~u_input.c.wx), u_input.c.yz);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.a.b - arg_2))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_3.a.b)), _wgslsmith_f_op_vec2_f32(abs(arg_3.a.b))), any(vec2<bool>(true, true)))) * arg_2));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(-1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(1f, all(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(342f, -989f) * vec2<f32>(-705f, -1000f)), Struct_2(Struct_1(1680f, vec2<f32>(-2961f, 463f), 81184u), vec2<i32>(-2147483647i, arg_0.x), arg_0.x, false)))), ~(1u & (1u | u_input.c.x))), _wgslsmith_add_vec2_i32((arg_0.zx ^ vec2<i32>(u_input.a.x, 1i)) | u_input.a.zx, vec2<i32>(0i, _wgslsmith_sub_i32(u_input.a.x, arg_0.x))) >> (vec2<u32>(90658u, 15972u) % vec2<u32>(32u)), -((countOneBits(arg_0.x) ^ arg_0.x) ^ u_input.a.x), true);
    let var_1 = var_0.b.x;
    let var_2 = vec2<bool>(true, all(select(!select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(false, var_0.d, true, var_0.d), vec4<bool>(var_0.d, true, var_0.d, var_0.d)), !vec4<bool>(true, false, var_0.d, var_0.d), vec4<bool>(false, !var_0.d, var_0.a.c == 29372u, false))));
    var var_3 = Struct_2(var_0.a, (countOneBits(vec2<i32>(2147483647i, u_input.a.x)) | -u_input.a.xy) << (~_wgslsmith_sub_vec2_u32(~u_input.d.wx, _wgslsmith_mult_vec2_u32(u_input.c.zw, u_input.d.xx)) % vec2<u32>(32u)), var_0.c, false);
    var var_4 = u_input.a;
    return var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<f32> {
    let var_0 = -122f;
    var var_1 = arg_1;
    var_1 = Struct_2(arg_1.a, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, var_1.b.x), vec2<i32>(44730i, -12382i)), arg_1.b), vec2<i32>(~(~var_1.b.x), ~(-2147483647i))), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(37897i, -9265i), -var_1.c), 0i), any(!vec4<bool>(false, !arg_0.x, u_input.c.x > 30497u, arg_0.x)));
    var_1 = arg_1;
    var_1 = func_2(u_input.a.zzy);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_1.a.b), var_1.a.b, true)) * arg_1.a.b);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 441f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1127f, arg_0)))), true)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1101f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(func_4(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), func_2(u_input.a.wyz), -u_input.a.zwy)))), _wgslsmith_div_u32(_wgslsmith_mult_u32(max(32170u, u_input.b), ~u_input.c.x), _wgslsmith_dot_vec4_u32(min(u_input.d, u_input.c), vec4<u32>(u_input.d.x, 13210u, u_input.c.x, u_input.d.x))) ^ ~(~u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec3_i32(max(u_input.a.zxz, u_input.a.yzz), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))).a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * 1000f)))), var_0.b, u_input.d.x);
    var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3(var_1.a, false, _wgslsmith_f_op_vec2_f32(vec2<f32>(165f, 1393f) * vec2<f32>(380f, -1139f)), func_2(-u_input.a.yyx))).x)), var_0.b, ~_wgslsmith_mod_u32(max(select(0u, var_1.c, arg_1.x), 12695u), max(min(1u, u_input.c.x), ~var_0.c)));
    var var_2 = false;
    var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, -259f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_1.b, vec2<f32>(-619f, -486f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2298f, var_1.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1467f)), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(var_0.a, var_0.a)), !arg_1.yx)))), var_0.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))), !all(arg_1.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, _wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), Struct_2(var_0, u_input.a.xw, 1i, true), u_input.a.yxz)).x)), func_2(u_input.a.xxy))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(573f, vec3<bool>(true, true, true))))));
    let var_1 = -39690i;
    let var_2 = select(!all(vec4<bool>(true, true, true, u_input.a.x < var_1)), true, !(firstTrailingBit(-var_1) > 1i));
    var var_3 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -763f), var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1302f)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, var_0)), 1u), ~u_input.a.wx, 17337i, all(select(vec4<bool>(true, false, true, var_2), vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(var_2, var_2, true, false)))))).x, !(!(!vec3<bool>(var_2, var_2, var_2)))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) + _wgslsmith_f_op_f32(sign(-886f)))) * var_0) * _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))))));
    var var_4 = vec4<i32>(~13949i, abs(24743i) << (_wgslsmith_mod_u32(~u_input.c.x, max(u_input.d.x, 4294967295u)) % 32u), -(~reverseBits(u_input.a.x)), -1i << (firstLeadingBit(~19621u) % 32u)) ^ _wgslsmith_clamp_vec4_i32(~u_input.a, u_input.a, _wgslsmith_add_vec4_i32(abs(vec4<i32>(var_1, -35149i, u_input.a.x, var_1) ^ u_input.a), vec4<i32>(-var_1, func_2(vec3<i32>(1i, 2147483647i, u_input.a.x)).c, -5505i, var_1)));
    var var_5 = func_2(firstTrailingBit(abs(select(_wgslsmith_div_vec3_i32(u_input.a.zxy, vec3<i32>(-6030i, -1i, -1i)), reverseBits(vec3<i32>(-42152i, 0i, var_1)), true)))).a;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(193f * -369f), _wgslsmith_f_op_f32(var_0 - var_5.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_5.a)) + _wgslsmith_f_op_f32(trunc(-1241f))))));
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(887f, vec4<i32>(var_4.x, ~(min(-28286i, u_input.a.x) ^ -45920i), _wgslsmith_dot_vec4_i32(min(max(u_input.a, vec4<i32>(u_input.a.x, 2147483647i, var_4.x, 0i)), u_input.a), ~(~u_input.a)), var_1), ~4294967295u, abs(var_4.zxx));
}

