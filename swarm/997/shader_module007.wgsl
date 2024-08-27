struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_1(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(arg_1.x, global0.a), 0i, reverseBits(global0.b.x)), vec3<i32>(_wgslsmith_clamp_i32(-18087i, -9266i, 59720i), 26913i, countOneBits(global0.b.x))), firstTrailingBit(vec3<i32>(0i, -176i, -1i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, global0.c.x, -1032f) * global0.c))), _wgslsmith_div_vec3_f32(global0.c, global0.c)), reverseBits(_wgslsmith_div_i32(arg_1.x, _wgslsmith_mod_i32(u_input.a, 1i))) & ~1i);
    global0 = var_0;
    var var_1 = _wgslsmith_f_op_f32(trunc(-480f));
    let var_2 = var_0.c.x;
    var var_3 = _wgslsmith_mod_i32(max((var_0.d | _wgslsmith_mod_i32(var_0.d, 459i)) | -19568i, 2147483647i), abs(abs(~var_0.a)));
    return !vec4<bool>(false, !(!any(vec3<bool>(false, true, false))), all(vec4<bool>(true, true, true, true)), !(!all(vec2<bool>(false, true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -333f);
    let var_1 = min(vec4<u32>(~60401u, select(4294967295u, 0u, _wgslsmith_clamp_u32(2382u, 19538u, 1u) == 4294967295u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(9061u, 46133u), vec2<u32>(39500u, 4294967295u), false), abs(vec2<u32>(0u, 25519u))), 4294967295u), ~vec4<u32>(0u, ~(~0u), 34312u, 14618u));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1682f)) - _wgslsmith_f_op_f32(max(-1014f, 609f)))))));
    var var_3 = 36410i;
    var_3 = 13702i >> (~_wgslsmith_dot_vec2_u32(~(~var_1.wy), ~var_1.zx) % 32u);
    return arg_1.b;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    global0 = Struct_1(1i, global0.b, _wgslsmith_f_op_vec3_f32(arg_2.a.wzw * global0.c), arg_0);
    global0 = Struct_1(21015i, -func_4(func_3(~4542u, vec2<i32>(arg_0, arg_0)), Struct_1(_wgslsmith_div_i32(global0.d, arg_0), vec3<i32>(1i, 1i, 1i), vec3<f32>(404f, arg_2.a.x, arg_2.a.x), u_input.a), Struct_1(47031i, select(vec3<i32>(arg_0, -2147483647i, 1i), vec3<i32>(arg_0, u_input.a, arg_0), arg_2.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, arg_2.a.x, 230f)), u_input.a), Struct_1(firstTrailingBit(2147483647i), vec3<i32>(u_input.a, 1i, global0.d), vec3<f32>(global0.c.x, -1000f, 310f), _wgslsmith_div_i32(-661i, arg_0))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1257f) + 620f), global0.c.x))), ~(~(i32(-1i) * -14162i)));
    let var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, -63174i, arg_0, ~1i), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a, 0i, 1i, -8400i), min(vec4<i32>(2147483647i, 2147483647i, arg_0, u_input.a), vec4<i32>(arg_0, -24565i, u_input.a, 0i)))), u_input.a), arg_0, -1i, _wgslsmith_mult_i32(arg_0, func_4(select(!vec4<bool>(true, arg_2.b, true, arg_1.x), !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true), Struct_1(_wgslsmith_add_i32(23518i, global0.b.x), reverseBits(global0.b), vec3<f32>(208f, 1000f, global0.c.x), 29932i), Struct_1(min(1i, 0i), global0.b, vec3<f32>(global0.c.x, -673f, global0.c.x), arg_0), Struct_1(u_input.a, -global0.b, _wgslsmith_div_vec3_f32(arg_2.a.zxw, global0.c), global0.d)).x));
    return Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, 474f) * _wgslsmith_f_op_f32(step(arg_2.a.x, global0.c.x))), _wgslsmith_f_op_f32(930f - global0.c.x)), _wgslsmith_div_vec4_f32(arg_2.a, _wgslsmith_f_op_vec4_f32(-arg_2.a))), true);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> i32 {
    var var_0 = all(vec4<bool>(true || arg_0.b, true, false, true));
    let var_1 = Struct_1(abs(global0.d) << ((_wgslsmith_mult_u32(~1904u, _wgslsmith_add_u32(37666u, arg_1)) | ~0u) % 32u), min(_wgslsmith_add_vec3_i32(arg_3.b | vec3<i32>(u_input.a, u_input.a, -7047i), vec3<i32>(0i, arg_3.b.x, -39472i)), vec3<i32>(~8351i, arg_3.a, global0.a)) | vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_3.a, 14749i), -9814i), 1i, global0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, -1099f, global0.c.x))))) + _wgslsmith_f_op_vec3_f32(arg_2.a.yxw + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, -1787f, global0.c.x), vec3<f32>(-688f, 196f, 1000f)) * _wgslsmith_f_op_vec3_f32(-global0.c)))), -1i);
    let var_2 = func_2(~(-10725i), !vec3<bool>(true, any(!vec4<bool>(false, true, arg_2.b, false)), !arg_2.b), Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(454f, -680f, _wgslsmith_div_f32(941f, arg_0.a.x), arg_0.a.x)), false));
    global0 = arg_3;
    var var_3 = arg_3;
    return _wgslsmith_dot_vec3_i32(abs(arg_3.b), -abs(~abs(var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>((i32(-1i) * -func_1(Struct_2(vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), true), 0u, Struct_2(vec4<f32>(global0.c.x, 1000f, -1743f, 1000f), true), Struct_1(2147483647i, vec3<i32>(global0.a, global0.d, u_input.a), global0.c, 2147483647i))) > 1i, false);
    let var_1 = ~1u << (_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, ~31378u, ~9367u), vec3<u32>(1u, 1u, 1u) >> (select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 7746u, 21305u), var_0.x) % vec3<u32>(32u))), select(abs(vec3<u32>(62403u, 0u, 28492u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(46635u, 0u, 4294967295u), vec3<u32>(2025u, 54918u, 39830u)), vec3<u32>(1u, firstLeadingBit(4294967295u), ~4294967295u), var_0.x)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(958f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-975f)), _wgslsmith_f_op_f32(f32(-1f) * -805f), var_0.x)) * _wgslsmith_f_op_f32(sign(global0.c.x))))));
    var_0 = select(select(func_3(18531u, _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), global0.b.xz), vec2<i32>(u_input.a, 0i))).zx, select(vec2<bool>(true, all(vec2<bool>(false, var_0.x))), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, var_0.x), func_3(var_1, global0.b.yz).yz), vec2<bool>(var_0.x, any(vec3<bool>(false, var_0.x, false)))), select(var_0.x, true, false)), vec2<bool>(var_0.x, true), true);
    global0 = Struct_1(_wgslsmith_clamp_i32(u_input.a, abs(countOneBits(u_input.a)) << (24497u % 32u), ~(-global0.d | 1i)), -global0.b, global0.c, u_input.a);
    let var_3 = func_2(~(-14446i), !(!select(!vec3<bool>(var_0.x, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)), Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(min(223f, var_2)), global0.c.x, 502f, -1000f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2, 876f, global0.c.x, global0.c.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, var_2, global0.c.x, -942f), vec4<f32>(var_2, 1833f, -829f, 762f)))))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_1 & var_1, ~(~var_1), global0.a);
}

