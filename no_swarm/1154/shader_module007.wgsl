struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, -1i);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> i32 {
    global0 = -(u_input.a ^ u_input.e.wx);
    let var_0 = Struct_2(select(true, true, true), !(arg_1 >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1067f + arg_1)))), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, ~0u, ~u_input.b, _wgslsmith_mod_u32(arg_0.x, 27615u)), countOneBits(vec4<u32>(24743u, 23084u, 0u, u_input.b) >> (vec4<u32>(11807u, 1u, 1u, 53034u) % vec4<u32>(32u)))), !vec3<bool>(26039i < global0.x, select(true, false, false), select(true, false, false)), 1i, 932f, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 * arg_1)))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(u_input.d & u_input.e, ~u_input.e), _wgslsmith_dot_vec3_i32(u_input.d.xzx, u_input.e.wyw) & -18468i), -reverseBits(i32(-1i) * -2147483647i)), -2147483647i);
    global0 = vec2<i32>(-1i) * -vec2<i32>((i32(-1i) * -36572i) >> (_wgslsmith_mult_u32(58128u, u_input.b) % 32u), max(-2147483647i, min(2147483647i, 1i)));
    global0 = var_0.d | abs(_wgslsmith_mod_vec2_i32(u_input.e.wx, var_0.d));
    global0 = min(max(u_input.a, var_0.d), _wgslsmith_add_vec2_i32(abs(-var_0.d), -var_0.d));
    return u_input.c;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> vec3<f32> {
    global0 = -vec2<i32>(abs(-63026i), func_3(arg_2.c.a.yx, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_2.c.e, arg_2.c.e))))));
    let var_0 = -u_input.e;
    let var_1 = Struct_2(arg_2.a, false, Struct_1(_wgslsmith_mult_vec4_u32(arg_2.c.a, ~vec4<u32>(4294967295u, 1u, u_input.b, arg_2.c.a.x)), select(!select(vec3<bool>(false, true, false), arg_2.c.b, true), !arg_2.c.b, select(!arg_2.c.b, !vec3<bool>(arg_2.c.b.x, true, arg_2.a), select(arg_2.c.b, vec3<bool>(arg_2.a, false, false), arg_2.c.b))), ~arg_2.c.c, _wgslsmith_f_op_f32(-arg_2.c.e), _wgslsmith_f_op_f32(f32(-1f) * -145f)), arg_2.d, _wgslsmith_mult_i32(-firstTrailingBit(16261i), 2147483647i >> ((arg_2.c.a.x ^ 0u) % 32u)) | arg_2.d.x);
    global0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(-44i, arg_0) << (~var_1.c.a.x % 32u), u_input.e.x), var_0.zy);
    global0 = arg_2.d;
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1387f, arg_2.c.e, var_1.c.d), vec3<f32>(-109f, var_1.c.e, -787f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.d, _wgslsmith_f_op_f32(max(893f, -1000f)), _wgslsmith_f_op_f32(sign(-781f)))), all(var_1.c.b.xx)));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 653f, 858f) - _wgslsmith_div_vec3_f32(vec3<f32>(423f, 1792f, arg_2.b.x), arg_2.b.wwz)) + _wgslsmith_f_op_vec3_f32(func_2(~36272i, global0.x, arg_2.a)))) * _wgslsmith_f_op_vec3_f32(arg_2.b.xzz + vec3<f32>(_wgslsmith_f_op_f32(338f + _wgslsmith_f_op_f32(f32(-1f) * -559f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.c.d))), _wgslsmith_f_op_f32(ceil(arg_2.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1025f, -1707f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - _wgslsmith_div_f32(-539f, arg_0.a.c.d))))));
    var var_2 = Struct_2(arg_2.a.a, true, arg_0.a.c, vec2<i32>(countOneBits(_wgslsmith_div_i32(-u_input.d.x, -2147483647i)), ~(-14932i)), reverseBits(0i) & firstTrailingBit(_wgslsmith_sub_i32(u_input.e.x >> (59771u % 32u), i32(-1i) * -23149i)));
    var var_3 = vec4<bool>(!arg_0.a.b, arg_0.a.b, arg_0.a.c.b.x | true, any(!var_2.c.b.zz));
    var_3 = select(select(vec4<bool>(true, u_input.b != reverseBits(0u), arg_2.a.c.b.x, true), vec4<bool>(true, false, !arg_2.a.a, ~arg_2.a.e < ~u_input.d.x), vec4<bool>(true, true, select(arg_0.a.b, arg_2.a.c.b.x, arg_2.a.c.b.x) == all(var_3.wy), false)), vec4<bool>(var_2.a, any(arg_2.a.c.b.yz), all(vec4<bool>(any(arg_0.a.c.b.zy), !arg_2.a.b, any(vec4<bool>(var_3.x, var_2.a, arg_0.a.b, var_3.x)), !var_2.b)), true), vec4<bool>(any(select(select(vec4<bool>(var_2.b, var_2.b, false, false), vec4<bool>(var_2.b, false, false, false), vec4<bool>(var_3.x, arg_0.a.a, arg_2.a.c.b.x, arg_2.a.a)), vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, arg_2.a.b), vec4<bool>(false, true, true, true), false))), arg_0.a.c.b.x, var_2.b, false));
    return vec3<u32>(4294967295u, select(~4294967295u, 4294967295u, _wgslsmith_mod_u32(~arg_2.a.c.a.x, ~var_2.c.a.x) > 1u), _wgslsmith_add_u32(~var_2.c.a.x, select(0u, var_2.c.a.x, arg_2.a.c.b.x) & u_input.b) | abs((1u << (arg_0.a.c.a.x % 32u)) & ~arg_0.a.c.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a >> (vec2<u32>(12341u, u_input.b) % vec2<u32>(32u));
    var var_0 = _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 22032u << (u_input.b % 32u), u_input.b << (1u % 32u)), func_1(Struct_3(Struct_2(false, false, Struct_1(vec4<u32>(u_input.b, 24843u, 1u, u_input.b), vec3<bool>(true, false, false), u_input.c, 613f, -1705f), u_input.d.zy, 1i), vec4<f32>(1000f, -527f, -897f, 1193f)), _wgslsmith_f_op_f32(1958f * 102f), Struct_3(Struct_2(true, false, Struct_1(vec4<u32>(1u, 6462u, 0u, u_input.b), vec3<bool>(true, false, true), -2147483647i, -479f, -562f), vec2<i32>(0i, global0.x), 2502i), vec4<f32>(1550f, -1936f, 493f, -1360f)))), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(96047u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(54424u, 5654u, 4294967295u))) ^ _wgslsmith_div_u32(4063u, u_input.b), u_input.b);
    var var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, u_input.a.x == -12025i), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true)), any(vec3<bool>(true, false, false)) & any(vec3<bool>(true, true, false))), vec2<bool>(false | (u_input.b <= 4294967295u), true), all(vec3<bool>(any(vec2<bool>(true, false)), all(vec4<bool>(false, false, false, true)), 1u < u_input.b))), !(!(_wgslsmith_f_op_f32(floor(872f)) <= _wgslsmith_f_op_f32(trunc(-870f)))));
    var var_2 = Struct_3(Struct_2(!var_1.x, var_1.x, Struct_1(abs(vec4<u32>(26173u, 4294967295u, 22182u, 0u)) & max(vec4<u32>(u_input.b, u_input.b, u_input.b, 14884u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec3<bool>(true, any(vec2<bool>(var_1.x, false)), var_1.x), firstTrailingBit(countOneBits(-44538i)), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1195f, -1010f), -597f))), vec2<i32>(-global0.x, -(-18665i << (u_input.b % 32u))), -u_input.c), vec4<f32>(-602f, 472f, -336f, _wgslsmith_f_op_vec3_f32(func_2(4714i >> (u_input.b % 32u), 0i ^ _wgslsmith_clamp_i32(0i, -1i, 60366i), Struct_2(false, true, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(var_1.x, true, var_1.x), -10728i, 1059f, -567f), u_input.e.yx, -1i))).x));
    var_0 = ~var_2.a.c.a.x;
    var var_3 = _wgslsmith_f_op_f32(-var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.c.e)), _wgslsmith_f_op_vec3_f32(func_2(2147483647i, -48000i << (u_input.b % 32u), Struct_2(false, false, var_2.a.c, vec2<i32>(global0.x, u_input.d.x), global0.x))).x, _wgslsmith_div_f32(-266f, var_2.a.c.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-498f - var_2.b.x), _wgslsmith_f_op_f32(-528f * 536f), _wgslsmith_f_op_f32(-var_2.b.x)))));
}

