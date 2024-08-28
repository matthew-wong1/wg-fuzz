struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: f32) -> vec3<bool> {
    var var_0 = arg_3;
    let var_1 = ~max(firstTrailingBit(u_input.c), 0i);
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(reverseBits(u_input.a)), ~u_input.d.x), global2.b);
    var var_3 = firstTrailingBit(global2.b.x);
    var var_4 = vec3<bool>(arg_1, arg_1, any(!vec3<bool>(global2.a.a.x, false, all(vec3<bool>(true, global1.a.a.x, false)))));
    return select(vec3<bool>(any(!vec3<bool>(var_4.x, arg_0.x, global2.a.a.x)), var_4.x, !all(!vec4<bool>(arg_1, global1.c, arg_1, arg_1))), !select(vec3<bool>(var_4.x, !arg_1, true), select(select(vec3<bool>(global1.c, arg_1, true), vec3<bool>(true, true, arg_0.x), vec3<bool>(false, var_4.x, global1.c)), !vec3<bool>(global1.c, global2.a.a.x, false), -747f != global2.a.c.x), vec3<bool>(arg_0.x & var_4.x, global2.c || true, global1.c)), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    global2 = arg_0;
    global0 = all(!select(func_3(arg_0.a.a, false, _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b, 1i, global1.a.b, global1.a.b), vec4<i32>(24700i, 4261i, global2.a.b, 21671i)), _wgslsmith_div_f32(global1.a.c.x, 1410f)), select(select(vec3<bool>(arg_0.c, arg_0.c, arg_1.d.a.a.x), vec3<bool>(arg_0.a.a.x, arg_2.a.x, false), vec3<bool>(arg_1.d.a.a.x, false, false)), select(vec3<bool>(true, global1.a.a.x, global1.a.a.x), vec3<bool>(arg_0.a.a.x, false, false), true), any(vec2<bool>(arg_1.d.a.a.x, true))), !func_3(global1.a.a, global2.c, vec4<i32>(2147483647i, 1i, global1.a.b, global2.a.b), global2.a.c.x).x));
    var var_0 = Struct_2(Struct_1(vec2<bool>(global1.a.a.x, func_3(arg_2.a, any(vec2<bool>(arg_1.d.c, global2.c)), ~vec4<i32>(-2147483647i, u_input.c, arg_2.b, arg_0.a.b), _wgslsmith_f_op_f32(max(-1535f, global2.a.c.x))).x), arg_2.b, arg_1.d.a.c, 3446u, _wgslsmith_div_f32(arg_2.e, -1769f)), ~(reverseBits(~arg_0.b) ^ ~global2.b), true);
    global1 = arg_0;
    var var_1 = ~vec2<u32>(4294967295u, abs(_wgslsmith_clamp_u32(0u, _wgslsmith_sub_u32(20515u, arg_0.b.x), countOneBits(1u))));
    return arg_3;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(735f, 307f, global2.a.c.x, 1800f), vec4<f32>(global2.a.c.x, -1005f, -1518f, 1072f), vec4<bool>(arg_0.d.c, arg_0.d.a.a.x, arg_0.d.a.a.x, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.e, global2.a.e, 746f, 938f))), vec4<bool>(global1.c, global2.a.a.x, false, global1.c))))));
    var var_1 = !any(!(!vec3<bool>(false, arg_0.d.a.a.x, false)));
    global1 = arg_0.d;
    let var_2 = Struct_3(-arg_0.a, arg_0.b, max(16222i, abs(2147483647i)), Struct_2(Struct_1(vec2<bool>(arg_0.d.a.a.x, any(vec3<bool>(true, true, global2.a.a.x))), _wgslsmith_add_i32(countOneBits(arg_0.b), global2.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.a.e, global1.a.c.x, arg_0.d.a.e)))), ~max(arg_1, global1.b.x), var_0.x), _wgslsmith_add_vec2_u32(~(global2.b ^ global1.b), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 11326u), vec2<u32>(33074u, global1.b.x))), global1.c), arg_0.e);
    var var_3 = var_2.d.a.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.e));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = ~arg_1.x;
    var var_1 = vec4<f32>(494f, -239f, global1.a.e, 684f);
    global2 = Struct_2(Struct_1(!global1.a.a, ~(-19939i), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0.e, global1.a.c.x)))), ~_wgslsmith_sub_u32(abs(u_input.a), global2.a.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(497f * 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -771f)))), select(~min(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.d, 1u), u_input.d.zy), ~vec2<u32>(arg_1.x, 3079u)), vec2<u32>(~_wgslsmith_add_u32(global1.a.d, global1.b.x), ~_wgslsmith_div_u32(arg_1.x, 25u)), select(vec2<bool>(all(vec3<bool>(arg_0.a.x, true, arg_0.a.x)), true), !arg_0.a, global1.a.a)), select(global1.c, false, _wgslsmith_div_i32(_wgslsmith_add_i32(1i, global2.a.b), global2.a.b) >= ~(-35942i)));
    var var_2 = max(~u_input.d, vec4<u32>(min(~(~global2.b.x), global1.b.x), ~(firstTrailingBit(global2.a.d) & select(1u, 4294967295u, false)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, global1.b.x, 12335u), _wgslsmith_add_u32(4294967295u, arg_0.d)), _wgslsmith_mult_u32(global2.a.d, u_input.a & global2.b.x)), _wgslsmith_add_u32(abs(87552u), u_input.d.x)));
    let var_3 = -4587i;
    return Struct_3(vec3<i32>(u_input.c, abs(32383i), global2.a.b), arg_0.b, ~_wgslsmith_sub_i32(var_3, -13912i), Struct_2(global2.a, global2.b, true), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d) >> (reverseBits(var_0) % 32u));
}

fn func_1() -> Struct_2 {
    let var_0 = countOneBits(u_input.d);
    var var_1 = func_5(Struct_1(!select(select(global1.a.a, global2.a.a, vec2<bool>(false, global2.a.a.x)), vec2<bool>(false, global1.c), global2.a.a.x & global1.c), global1.a.b, global2.a.c, abs(u_input.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a.e)))), u_input.d.xxz, _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(u_input.c, 0i, u_input.c)), func_2(Struct_2(global2.a, vec2<u32>(0u, 4294967295u), global1.c), Struct_3(vec3<i32>(u_input.c, -2147483647i, global1.a.b), -2147483647i, global2.a.b, Struct_2(Struct_1(vec2<bool>(global2.a.a.x, global2.a.a.x), 26976i, global1.a.c, 107938u, global2.a.c.x), vec2<u32>(u_input.a, u_input.b.x), global2.c), 95895u), global2.a, vec3<i32>(global1.a.b, u_input.c, -2147483647i)), vec3<i32>(global2.a.b, global1.a.b, u_input.c) ^ vec3<i32>(global2.a.b, -2147483647i, global2.a.b)), _wgslsmith_sub_i32(global1.a.b, 2147483647i), global1.a.b, Struct_2(global2.a, max(vec2<u32>(var_0.x, 78946u), vec2<u32>(global2.b.x, 1u)), all(vec4<bool>(global1.a.a.x, false, true, true))), global2.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, ~global2.b.x, global2.a.d << (0u % 32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.d, u_input.b.x, u_input.a, global2.b.x), u_input.d), min(global2.a.d, 1u), var_0.x)), 48908i)));
    let var_2 = vec2<f32>(-1700f, _wgslsmith_f_op_f32(f32(-1f) * -1873f));
    var var_3 = select(select(vec4<bool>(global1.a.a.x, !(global2.c | false), true, !(var_1.d.a.b < -1i)), select(!vec4<bool>(false, false, true, global2.a.a.x), vec4<bool>(func_5(global1.a, var_0.wwy, 1173f).d.c, global1.c, any(vec3<bool>(true, global2.c, false)), 2516u <= u_input.a), !select(vec4<bool>(global2.a.a.x, false, false, false), vec4<bool>(false, false, var_1.d.c, false), true)), vec4<bool>(all(func_3(global2.a.a, global2.c, vec4<i32>(-1i, 2147483647i, -190i, 72036i), global1.a.e).xy), !(!var_1.d.c), true | global2.a.a.x, false)), !vec4<bool>(global1.c && all(vec4<bool>(true, true, global1.a.a.x, global2.a.a.x)), true, (u_input.d.x | u_input.b.x) > 4294967295u, true), u_input.c < _wgslsmith_add_i32(u_input.c, 33658i));
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -437f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.e)) + -1648f)) - _wgslsmith_f_op_f32(abs(-778f))), func_5(func_5(Struct_1(var_3.xx, -global2.a.b, vec3<f32>(-230f, 192f, -204f), 4294967295u, _wgslsmith_f_op_f32(trunc(1533f))), var_0.yww, global2.a.e).d.a, abs(var_0.yyx), _wgslsmith_f_op_f32(step(1f, global1.a.e))).d.a.c.x, global1.a.c.x);
    return Struct_2(Struct_1(!func_5(Struct_1(var_3.xy, 33407i, var_1.d.a.c, 71586u, var_1.d.a.e), u_input.d.yzx, _wgslsmith_f_op_f32(f32(-1f) * -1739f)).d.a.a, _wgslsmith_mod_i32(countOneBits(var_1.c), u_input.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, 1716f, 597f))))), (_wgslsmith_div_u32(var_0.x, global2.a.d) ^ u_input.b.x) >> ((u_input.d.x >> (~45612u % 32u)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-1381f))))), ~(~vec2<u32>(max(3416u, 0u), ~52106u)), func_3(select(vec2<bool>(global2.a.d < u_input.b.x, var_2.x <= -325f), vec2<bool>(func_5(Struct_1(global2.a.a, -1i, global2.a.c, 0u, -1000f), u_input.d.xxy, var_2.x).d.a.a.x, false), var_3.x), global1.a.b != min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, -9024i, 6518i), vec4<i32>(2147483647i, -2147483647i, 0i, 1633i)), countOneBits(-45110i)), -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, 85036i, -11607i, -17376i)), ~vec4<i32>(global2.a.b, 1i, 30847i, 5397i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -231f) + var_4.x)).x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global1 = Struct_2(global1.a, vec2<u32>(global1.b.x, 0u), true);
    global1 = Struct_2(Struct_1(global2.a.a, ~countOneBits(global1.a.b), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a.c - vec3<f32>(-1000f, global1.a.e, -125f)), global2.a.c), global1.a.c, func_3(func_1().a.a, false, _wgslsmith_div_vec4_i32(vec4<i32>(11812i, 45287i, global2.a.b, global1.a.b), vec4<i32>(global1.a.b, u_input.c, global2.a.b, -1i)), _wgslsmith_f_op_f32(-global2.a.c.x)).x)), global2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.c.x)) - _wgslsmith_f_op_f32(min(-1136f, _wgslsmith_f_op_f32(floor(global1.a.c.x)))))), vec2<u32>(select(~u_input.b.x, reverseBits(abs(1u)), global1.c), ~45759u), select(true || !global2.a.a.x, false == !(!global2.a.a.x), global2.a.a.x));
    global1 = func_1();
    let var_0 = _wgslsmith_div_vec3_u32(~u_input.d.yxy, _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.zxy, vec3<u32>(global2.b.x, global2.a.d, global1.b.x)), abs(u_input.d.wzy)) | u_input.d.wzx, abs(abs(_wgslsmith_div_vec3_u32(u_input.d.xzw, u_input.d.xxw)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zxx, min(max(global1.b, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 0u) ^ vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 16147u))), func_5(global2.a, ~vec3<u32>(4294967295u, u_input.d.x, 70057u), -566f).d.b));
}

