struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<u32> {
    global0 = vec3<bool>(true, false, any(select(!select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(global0.x, true, global0.x), global0.x), vec3<bool>(global0.x, true, global0.x)))));
    var var_0 = vec3<bool>(true, true, global0.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -1091f, arg_1.a) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 241f, -2200f) - vec3<f32>(-731f, -113f, arg_1.a))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, 1087f, arg_1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, arg_1.a))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, -1676f, 453f), vec3<f32>(1243f, arg_1.a, arg_1.a)))), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-742f - -880f), -181f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(1708f)))), 970f, 1297f))));
    global0 = select(!(!select(vec3<bool>(global0.x, false, global0.x), select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, global0.x, true), true), !vec3<bool>(false, var_0.x, false))), !vec3<bool>(any(vec2<bool>(true, true)), true & !var_0.x, all(vec2<bool>(global0.x, false)) | var_0.x), u_input.c.x < firstTrailingBit(select(_wgslsmith_add_u32(0u, 4294967295u), 0u, select(global0.x, var_0.x, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-255f, _wgslsmith_div_f32(arg_1.a, var_1.x), _wgslsmith_f_op_f32(floor(472f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(463f)), 356f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-var_1.x)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.x)) * _wgslsmith_f_op_f32(select(arg_1.a, arg_1.a, global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 272f, -272f))))), true));
    return u_input.e.zz;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = arg_1.c;
    let var_1 = select(select(!select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true)), select(select(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(global0.x, false, true), false), !vec3<bool>(global0.x, global0.x, global0.x), !(!vec3<bool>(global0.x, global0.x, true))), global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, !(global0.x || all(vec4<bool>(true, global0.x, true, global0.x)))));
    let var_2 = Struct_3(_wgslsmith_add_vec2_u32(var_0.c.yx, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(46446u, var_0.b.x, arg_1.c.b.x), 16716u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c.c.x, 0u) & vec2<u32>(29465u, 0u), arg_1.c.c.yy))), ~abs(49733i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1321f))), var_0.b, var_0.c, _wgslsmith_f_op_f32(arg_0.x - 1000f)), u_input.a.x);
    global0 = select(!(!var_1), vec3<bool>(global0.x, false, all(vec2<bool>(all(var_1), var_1.x))), vec3<bool>(true, var_1.x, any(global0.yy)));
    global0 = var_1;
    return var_1;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = select(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(394f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-136f, -452f) - vec2<f32>(1381f, 298f)))), Struct_3(func_3(vec4<i32>(1i, -25122i, -13326i, 39192i), Struct_2(-1276f)), -arg_0.x << (firstTrailingBit(22411u) % 32u), Struct_1(101f, u_input.e.zy, u_input.e.wxw, -713f), u_input.d.x)), func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-309f, 1878f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1457f, 339f), vec2<f32>(795f, -308f), vec2<bool>(true, global0.x)))))), Struct_3(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.e.zy, u_input.c.yz), _wgslsmith_sub_vec2_u32(u_input.c.yz, vec2<u32>(u_input.c.x, 9706u))), _wgslsmith_dot_vec4_i32(~u_input.a, ~arg_0), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -117f), vec2<u32>(u_input.b, u_input.e.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.e.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(1u, u_input.b, 4294967295u)), -957f), -40177i)), true);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-517f)) + -599f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(275f * _wgslsmith_f_op_f32(-1342f - -1327f))))), ~vec2<u32>(abs(39812u), ~_wgslsmith_dot_vec3_u32(u_input.e.wwy, u_input.e.xxz)), ~_wgslsmith_mod_vec3_u32(~u_input.e.wxw, vec3<u32>(~4486u, ~4488u, u_input.e.x)), -111f);
}

fn func_5(arg_0: Struct_5) -> Struct_1 {
    let var_0 = u_input.a.x;
    let var_1 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-65399i, arg_0.a, var_0, -1i), vec4<i32>(var_0, 39189i, 47121i, arg_0.a), true), vec4<i32>(-10839i, var_0, u_input.d.x, -17739i)) ^ ~u_input.a, -firstTrailingBit(vec4<i32>(-1i, arg_0.a, 2147483647i, -2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b) >= -1000f;
    var var_3 = _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(-arg_0.c.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d)))));
    global0 = select(select(select(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, true, global0.x)), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.c.d, arg_0.b), vec2<f32>(815f, arg_0.b)), Struct_3(vec2<u32>(u_input.b, 1u), var_1.x, arg_0.c, -2147483647i)), 1u < u_input.b), select(!func_4(vec2<f32>(arg_0.b, -137f), Struct_3(u_input.e.yy, var_0, Struct_1(arg_0.c.d, u_input.e.ww, arg_0.c.c, 549f), 1i)), !(!vec3<bool>(global0.x, false, global0.x)), !vec3<bool>(global0.x, false, true)), true), vec3<bool>(global0.x, any(!vec3<bool>(global0.x, false, global0.x)) & select(global0.x || global0.x, global0.x | global0.x, all(vec2<bool>(global0.x, false))), true), select(select(!select(vec3<bool>(global0.x, true, false), vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, global0.x, global0.x)), vec3<bool>(true, true, true), true), !vec3<bool>(true, global0.x && true, all(vec4<bool>(global0.x, true, global0.x, global0.x))), !select(func_4(vec2<f32>(arg_0.c.d, arg_0.b), Struct_3(u_input.c.xy, arg_0.a, arg_0.c, 51998i)), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, true))));
    return Struct_1(_wgslsmith_f_op_f32(215f * _wgslsmith_f_op_f32(-804f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1305f + 1173f), _wgslsmith_f_op_f32(-arg_0.c.d)))), firstTrailingBit(~arg_0.c.c.zx), select(u_input.c, vec3<u32>(_wgslsmith_clamp_u32(countOneBits(arg_0.c.b.x), func_3(vec4<i32>(var_1.x, var_1.x, u_input.d.x, 22360i), Struct_2(arg_0.c.a)).x, 70549u), arg_0.c.b.x, 4326u), !(!select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, global0.x), false))), arg_0.b);
}

fn func_6(arg_0: Struct_5, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_4 {
    global0 = vec3<bool>(!global0.x, global0.x, true);
    let var_0 = countOneBits(_wgslsmith_dot_vec3_u32(arg_3.c.c, min(vec3<u32>(_wgslsmith_mult_u32(6509u, u_input.e.x), u_input.e.x, ~0u), ~(u_input.e.yyw | arg_0.c.c))));
    global0 = select(!vec3<bool>(!global0.x, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1426f)), Struct_3(arg_0.c.c.zx, arg_3.b, Struct_1(1840f, u_input.c.zy, vec3<u32>(u_input.b, 55690u, 4294967295u), -542f), u_input.a.x)).x, ~arg_3.d < 2147483647i), vec3<bool>((_wgslsmith_sub_u32(arg_0.c.b.x, 0u) & ~1u) == _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_3.a.x, arg_3.c.b.x, 1u), u_input.c, vec3<bool>(false, false, false)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, arg_0.c.b.x), u_input.c)), false, true), true && !func_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-128f, arg_2.a), vec2<f32>(1033f, arg_0.c.d))), Struct_3(vec2<u32>(1u, arg_0.c.c.x), 1i, Struct_1(arg_2.a, arg_0.c.b, vec3<u32>(16444u, 28383u, 9801u), arg_1), u_input.d.x)).x);
    let var_1 = _wgslsmith_add_u32(0u, 1u);
    var var_2 = u_input.c;
    return Struct_4(Struct_3(~u_input.e.wy, ~(-28732i), func_5(Struct_5(-46036i, -570f, Struct_1(1368f, vec2<u32>(4294967295u, 4294967295u), vec3<u32>(41130u, arg_3.a.x, arg_3.a.x), arg_1))), _wgslsmith_sub_i32(u_input.a.x, 2147483647i)), 0u << (0u % 32u), u_input.e >> ((u_input.e << (firstLeadingBit(~u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_6(Struct_5(_wgslsmith_sub_i32(reverseBits(0i) | (16141i ^ u_input.d.x), 58474i), _wgslsmith_div_f32(-1000f, 677f), func_5(Struct_5(u_input.d.x, _wgslsmith_f_op_f32(select(-1113f, 1154f, global0.x)), func_2(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i))))), _wgslsmith_f_op_f32(-125f * _wgslsmith_f_op_f32(abs(512f))), Struct_2(512f), Struct_3(~countOneBits(~vec2<u32>(u_input.c.x, u_input.b)), _wgslsmith_clamp_i32(u_input.a.x, 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.d.xz, u_input.a.wy), countOneBits(vec2<i32>(u_input.a.x, u_input.a.x)))), Struct_1(-1120f, ~_wgslsmith_mod_vec2_u32(u_input.c.yy, u_input.e.ww), vec3<u32>(u_input.e.x, 1u, ~6163u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(572f)) + -619f)), select(~reverseBits(u_input.d.x), abs(firstTrailingBit(2147483647i)), false)));
    global0 = !(!func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -860f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(918f, 1000f))), var_0.a));
    var var_1 = _wgslsmith_f_op_f32(-1000f * var_0.a.c.d);
    var var_2 = ~4294967295u;
    var var_3 = vec3<u32>(u_input.e.x, 0u, _wgslsmith_mod_u32(~_wgslsmith_div_u32(u_input.b >> (var_0.a.a.x % 32u), func_3(vec4<i32>(var_0.a.d, -2147483647i, -2147483647i, 0i), Struct_2(175f)).x), 1u));
    return var_0.c;
}

fn func_7(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = false;
    let var_1 = ~1i;
    let var_2 = arg_0.x;
    global0 = select(!select(vec3<bool>(global0.x, !global0.x, true && global0.x), !(!vec3<bool>(global0.x, global0.x, global0.x)), true), !vec3<bool>(!(!var_0), !var_0, false), true);
    global0 = select(!vec3<bool>(var_0, any(!vec4<bool>(var_0, true, false, var_0)), any(!global0.xy)), vec3<bool>(arg_1.x <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -474f))), var_0, !(arg_1.x != arg_1.x)), all(func_4(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, -270f)))), func_6(Struct_5(arg_2, -1062f, Struct_1(1000f, vec2<u32>(1u, 4294967295u), vec3<u32>(54658u, u_input.c.x, u_input.c.x), 134f)), arg_1.x, Struct_2(arg_1.x), func_6(Struct_5(2147483647i, arg_1.x, Struct_1(arg_1.x, vec2<u32>(37213u, 51470u), u_input.c, arg_1.x)), arg_1.x, Struct_2(-916f), Struct_3(arg_0.yw, 93961i, Struct_1(arg_1.x, vec2<u32>(var_2, arg_0.x), arg_0.xxy, arg_1.x), u_input.a.x)).a).a)));
    return Struct_5(u_input.a.x | _wgslsmith_mod_i32(-41547i, -20188i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - -190f) + arg_1.x), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -563f))), reverseBits(u_input.e.wx), vec3<u32>(~12356u, var_2, 0u), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 742f, -807f))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(2633f, 1615f, -585f) * vec3<f32>(-1000f, 676f, 636f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, -293f, _wgslsmith_f_op_f32(712f - -983f)))), u_input.a.x);
    global0 = vec3<bool>(false, global0.x, global0.x);
    var_0 = func_7(vec4<u32>(max(~(~49125u), 47885u), func_3(vec4<i32>(u_input.a.x, ~(-32083i), var_0.a, -1i), Struct_2(-863f)).x, u_input.e.x, u_input.b), vec3<f32>(var_0.b, func_7(vec4<u32>(_wgslsmith_mod_u32(1u, 33678u), var_0.c.c.x, 61902u, _wgslsmith_mult_u32(0u, 0u)), vec3<f32>(-794f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(var_0.b, var_0.b)), var_0.a).c.a, var_0.c.d), -_wgslsmith_div_i32(88962i, u_input.a.x));
    var var_1 = -33516i;
    global0 = vec3<bool>(global0.x, (var_0.c.a == _wgslsmith_f_op_f32(-347f * func_5(Struct_5(0i, -1000f, var_0.c)).a)) | true, any(select(!(!vec3<bool>(false, false, global0.x)), vec3<bool>(false, global0.x && global0.x, !global0.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, -u_input.d.x << (u_input.e.x % 32u), ~u_input.b, var_0.c.b.x, vec2<u32>(u_input.c.x, ~var_0.c.c.x | var_0.c.b.x));
}

