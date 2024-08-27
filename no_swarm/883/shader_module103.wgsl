struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
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

var<private> global0: bool = false;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec4<i32>) -> f32 {
    global0 = (((_wgslsmith_dot_vec2_i32(arg_1.wx, arg_1.xy) == ~23187i) && any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), false))) && (~u_input.c == _wgslsmith_sub_i32(arg_1.x & -2147483647i, ~arg_1.x))) || true;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-763f, 485f, global1.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global1.x, arg_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, arg_0, 1000f)))))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1071f, 1495f, arg_0)))))));
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-883f))), 1000f), vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(930f, -1024f)), _wgslsmith_f_op_f32(-arg_0)))), 270f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(trunc(global1.x)), global1.x)))), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), global1.x), u_input.c & firstLeadingBit(-_wgslsmith_dot_vec2_i32(arg_1.yy, arg_1.xz)));
    var var_1 = ~0i;
    var_1 = ((-1i | _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d, 2147483647i), abs(15332i))) >> (~_wgslsmith_add_u32(u_input.a, u_input.a) % 32u)) ^ u_input.d;
    return -345f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1465f))), 682f);
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1332f, arg_2)) * 374f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1270f) * 1274f), 283f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.d - _wgslsmith_f_op_vec3_f32(-vec3<f32>(571f, 379f, 1932f)))) - vec3<f32>(-717f, 129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2)) + _wgslsmith_f_op_f32(1587f * -258f)))));
    global0 = all(select(vec4<bool>(true && any(vec4<bool>(true, false, true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), true, ~(-2147483647i) > firstLeadingBit(u_input.c)), !vec4<bool>(true, true, true, any(vec2<bool>(true, false))), vec4<bool>(false, !(arg_1.e > u_input.c), false, true)));
    let var_0 = abs(82994u);
    var var_1 = false || (_wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-955f * -1064f)))) > global1.x);
    return var_0;
}

fn func_2() -> vec3<bool> {
    let var_0 = vec3<u32>(1u, func_4(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x), ~vec4<i32>(u_input.c, 471i, 1i, u_input.d))), Struct_1(_wgslsmith_f_op_vec2_f32(step(global1.yz, global1.xy)), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-499f * -1949f), _wgslsmith_f_op_f32(trunc(168f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1096f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, global1.x, -930f)))), u_input.c), global1.x, vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.c, 1i), vec3<i32>(-2147483647i, 1i, u_input.c), vec3<i32>(0i, u_input.d, u_input.d))), firstTrailingBit(select(_wgslsmith_mod_u32(reverseBits(u_input.a), ~u_input.a), _wgslsmith_mult_u32(u_input.a, 1u), any(vec3<bool>(true, true, true)))));
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(380f)), global1.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(sign(global1.x)), global1.x)) - vec3<f32>(613f, global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1503f, global1.x)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global1.x), global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(-136f, global1.x, global1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global1.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) * -501f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(758f, global1.x, true)) * _wgslsmith_div_f32(805f, global1.x))), global1.x), ~1i);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c.x, -263f), var_1.b.xy)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-1413f + _wgslsmith_f_op_f32(147f + var_1.c.x)), -196f))));
    var var_3 = vec3<i32>(~(u_input.d & _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(0i, 21151i)), vec2<i32>(u_input.c, var_1.e))), -(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 7284i, 2147483647i, -2147483647i), vec4<i32>(var_1.e, 1i, -2147483647i, u_input.c)) & var_1.e), -_wgslsmith_mod_i32(~(-1i), u_input.c));
    var var_4 = var_1;
    return !(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true)), true));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = vec3<f32>(1f, arg_2.x, 745f);
    var var_0 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, arg_3.e, -1i), vec3<i32>(-43560i, u_input.c, -1840i)), vec3<i32>(_wgslsmith_sub_i32(arg_3.e, 28112i), u_input.c, -8525i ^ u_input.c)), firstTrailingBit(vec3<i32>(arg_3.e, -_wgslsmith_mod_i32(-1i, u_input.d), abs(-39389i))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.b, arg_3.c), arg_3.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(1684f, arg_3.c.x, -162f) + _wgslsmith_f_op_vec3_f32(-arg_2.xxz))), arg_3.d));
    var_0 = _wgslsmith_sub_i32(arg_3.e, -_wgslsmith_sub_i32(~0i << (1u % 32u), -u_input.c));
    var var_1 = 34663u;
    return arg_3;
}

fn func_6(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = ~_wgslsmith_sub_vec4_u32(~reverseBits(~vec4<u32>(50000u, 34131u, u_input.b.x, 42897u)), u_input.b);
    var var_1 = func_5(max(u_input.b.yy, ~_wgslsmith_mult_vec2_u32(var_0.yw, u_input.b.ww)), vec3<bool>(all(vec4<bool>(true, true, true, false)), func_2().x, true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), arg_0.c.x, _wgslsmith_f_op_f32(max(2058f, arg_0.b.x)), _wgslsmith_div_f32(arg_0.c.x, -658f))))), func_5(~(~u_input.b.wz) >> (~var_0.yz % vec2<u32>(32u)), vec3<bool>(false, all(vec2<bool>(true, true)), true), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 164f, global1.x, -1876f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(449f, 382f, 1000f, global1.x) * vec4<f32>(arg_0.d.x, global1.x, global1.x, arg_0.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.c.xy), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1731f, global1.x, global1.x))) - arg_0.d), arg_0.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(arg_0.c - vec3<f32>(-657f, arg_0.b.x, 167f)), _wgslsmith_f_op_vec3_f32(select(arg_0.c, arg_0.c, vec3<bool>(false, true, false))))), 2147483647i)));
    var var_2 = arg_0.e;
    var var_3 = func_5(~vec2<u32>(var_0.x, 11450u), !vec3<bool>(-arg_0.e <= arg_0.e, true, true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)), _wgslsmith_div_f32(var_1.b.x, arg_0.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1197f), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * global1.x))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.b.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1647f)), global1.x, _wgslsmith_f_op_f32(-global1.x)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.yy) - var_1.c.zy), _wgslsmith_f_op_vec3_f32(var_1.b * arg_0.b), var_1.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c) * _wgslsmith_f_op_vec3_f32(-var_1.d)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x - 213f), -165f, arg_0.c.x), vec3<bool>(true, true, true))), -21637i));
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec2_f32(arg_0.d.xx + vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 403f));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(-arg_1);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_6(func_5(_wgslsmith_sub_vec2_u32(u_input.b.xy, ~u_input.b.xz), select(func_2(), vec3<bool>(true, true, arg_3), any(arg_2.yx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-170f, -490f, -764f, arg_0)))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_0) - vec2<f32>(-275f, -1525f)), vec3<f32>(836f, 320f, arg_0), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2642f, global1.x, 2817f))), arg_1, ~2147483647i)))), _wgslsmith_f_op_vec3_f32(arg_1 * arg_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(168f, _wgslsmith_f_op_f32(-387f + arg_0), arg_1.x), vec3<f32>(-1000f, global1.x, _wgslsmith_div_f32(-442f, 389f)))))), arg_1, _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -5168i));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(min(369f, 552f)), _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)))))));
    global0 = arg_2.x || true;
    var var_1 = Struct_1(global1.yx, var_0.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * _wgslsmith_f_op_vec3_f32(-arg_1)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_1), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-181f))), _wgslsmith_f_op_f32(f32(-1f) * -170f), _wgslsmith_f_op_f32(-arg_1.x)))), 0i);
    return var_0;
}

fn func_7(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x + global1.x), global1.x)))) >= -343f;
    var var_0 = vec4<i32>(func_5(~vec2<u32>(_wgslsmith_sub_u32(arg_1, 59693u), abs(32259u)), !(!select(arg_3, arg_3, arg_3.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, arg_2.c.x, -1000f, global1.x), vec4<f32>(507f, arg_2.b.x, arg_2.a.x, global1.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-730f, 365f, global1.x, arg_2.d.x) + vec4<f32>(280f, -1000f, 180f, arg_2.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, -463f, 2424f, arg_2.c.x)))))), func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.b.x), _wgslsmith_f_op_f32(max(222f, arg_2.b.x))), _wgslsmith_f_op_vec3_f32(arg_2.d - _wgslsmith_f_op_vec3_f32(-arg_2.b)), arg_3, all(select(vec3<bool>(arg_3.x, false, arg_3.x), arg_3, arg_3.x)))).e, _wgslsmith_dot_vec2_i32(~(vec2<i32>(arg_0, u_input.c) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) ^ vec2<i32>(1i, 27122i >> (arg_1 % 32u)), -_wgslsmith_sub_vec2_i32(~vec2<i32>(-55788i, arg_2.e), reverseBits(vec2<i32>(-37914i, arg_0)))), u_input.d << (1u % 32u), -19427i);
    var var_1 = arg_2;
    var var_2 = !(_wgslsmith_clamp_u32(1u, arg_1, 19755u) <= max(arg_1 | ~8520u, 1u));
    var var_3 = ~_wgslsmith_clamp_i32(arg_0, var_0.x, arg_2.e) >> (4294967295u % 32u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-152f - _wgslsmith_f_op_f32(-1000f - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x * 490f) * _wgslsmith_f_op_f32(-global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(func_7(abs(-_wgslsmith_sub_i32(u_input.c, u_input.d)), 111623u, func_1(_wgslsmith_div_f32(-701f, _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, global1.x, -951f)), vec3<bool>(true, true, true), all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)))), vec3<bool>(all(vec2<bool>(true, false)) | true, true, any(vec4<bool>(false, false, false, false))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, -878f)), _wgslsmith_f_op_f32(-global1.x))), ~_wgslsmith_div_vec4_i32(max(vec4<i32>(u_input.c, 43844i, u_input.c, 32044i), vec4<i32>(-40977i, 5239i, -18653i, 1i)), vec4<i32>(-53570i, u_input.c, -30631i, 33159i) << (u_input.b % vec4<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_5(u_input.b.yx, vec3<bool>(true, true, true), vec4<f32>(2096f, 357f, global1.x, global1.x), Struct_1(global1.yx, vec3<f32>(-1186f, -955f, global1.x), vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(global1.x, global1.x, global1.x), 59424i)).c.x))));
    global0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2395f, global1.x, global1.x) + vec3<f32>(392f, 3880f, -1867f))))));
    global1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -260f, _wgslsmith_f_op_vec2_f32(func_6(Struct_1(vec2<f32>(global1.x, 1720f), vec3<f32>(-1063f, -2134f, global1.x), vec3<f32>(939f, global1.x, -1362f), vec3<f32>(global1.x, global1.x, 937f), -2147483647i))).x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.x + 1000f), global1.x, -426f))), func_2(), false).b;
    let var_0 = ~_wgslsmith_mod_i32(u_input.d, firstLeadingBit(-2147483647i));
    let var_1 = !(!vec2<bool>(true, _wgslsmith_f_op_f32(-global1.x) != 776f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -386f))))));
}

