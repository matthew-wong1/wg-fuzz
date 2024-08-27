struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 907f;

var<private> global1: vec4<f32> = vec4<f32>(286f, -349f, 637f, -264f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> f32 {
    var var_0 = vec3<bool>(true, true, !(_wgslsmith_f_op_f32(f32(-1f) * -852f) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) - -1805f)));
    global0 = 1162f;
    var var_1 = Struct_1(523f, vec4<bool>(~_wgslsmith_dot_vec4_i32(u_input.d, u_input.d) < u_input.d.x, ~_wgslsmith_sub_u32(arg_2.x, u_input.a) <= arg_2.x, true, all(select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), var_0.x))), u_input.d.yw, -(~(-(~(-5421i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x), 180f)), global1.wzz));
    var var_2 = arg_1.yw;
    let var_3 = Struct_4(u_input.e.x & _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(-1i), u_input.c), 2147483647i), arg_2.yx, Struct_3(u_input.d));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(764f + -1000f), global1.x))));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(11251i, vec4<f32>(-463f, arg_2.x, -207f, -1177f), u_input.b)), 1151f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), 1762f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(0i, vec4<f32>(global1.x, global1.x, 1061f, -237f), vec3<u32>(u_input.b.x, u_input.b.x, arg_0.b.x))), global1.x, global1.x, arg_1.x) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, 630f, arg_1.x), vec4<f32>(arg_1.x, arg_2.x, global1.x, global1.x), false))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, -218f, 616f, arg_2.x)) - vec4<f32>(_wgslsmith_f_op_f32(ceil(-475f)), arg_2.x, arg_2.x, _wgslsmith_f_op_f32(trunc(global1.x))))), arg_0, Struct_3(-_wgslsmith_add_vec4_i32(~vec4<i32>(-45624i, -1i, u_input.c, arg_0.c.a.x), arg_0.c.a)));
    var var_1 = true | all(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)));
    var var_2 = Struct_2(~var_0.c.b, vec3<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(~u_input.b.x, u_input.b.x)), u_input.a, 26259u));
    let var_3 = vec4<bool>(!(!any(vec2<bool>(false, true))), false, 170f < arg_1.x, (~var_0.c.a >> (u_input.b.x % 32u)) >= 1i);
    var_2 = Struct_2(var_2.a | countOneBits(vec2<u32>(abs(4294967295u), _wgslsmith_mult_u32(arg_0.b.x, var_0.c.b.x))), var_2.b);
    return vec2<bool>(all(vec3<bool>(false, var_3.x, var_3.x)) && true, !any(vec2<bool>(false, var_3.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<i32>) -> u32 {
    let var_0 = vec3<i32>(arg_2.x, ~_wgslsmith_dot_vec3_i32(-(~u_input.d.xwx), ~vec3<i32>(u_input.c, -28627i, arg_2.x)), ~(min(firstLeadingBit(-1i), _wgslsmith_mod_i32(1i, arg_2.x)) ^ _wgslsmith_mod_i32(_wgslsmith_clamp_i32(arg_2.x, 51096i, arg_2.x), abs(arg_2.x))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -444f, 561f) - vec4<f32>(-437f, 749f, global1.x, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, -339f, global1.x, -459f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -852f), global1.x, -245f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(646f, -582f, global1.x, -880f), vec4<f32>(global1.x, global1.x, -1000f, -352f), arg_1.x))))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-498f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + -540f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1.x))))), 1103f)));
    let var_2 = vec4<bool>(select(-2147483647i != -u_input.d.x, !(_wgslsmith_mult_i32(arg_2.x, 0i) > select(arg_2.x, -2147483647i, true)), func_2(Struct_4(u_input.c, abs(u_input.b.zz), Struct_3(u_input.d)), global1.wxz, _wgslsmith_f_op_vec2_f32(global1.xy + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1439f, var_1.x))))).x), u_input.b.x == (countOneBits(9880u) & u_input.a), !select(false, arg_1.x, !arg_1.x) && !(arg_1.x & !arg_1.x), all(!(!vec3<bool>(arg_1.x, arg_1.x, true))));
    return ~(~(~(~_wgslsmith_sub_u32(0u, arg_0.x))));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = ~(~u_input.b);
    var_0 = vec3<u32>(max(var_0.x, 17979u), 1u, _wgslsmith_add_u32(arg_0.c.b.x ^ 0u, var_0.x));
    global1 = arg_0.a;
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + arg_1.x)), all(vec3<bool>(true, true, true)))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)), 1f));
    let var_1 = u_input.b.yz;
    return vec4<u32>(var_0.x, _wgslsmith_mod_u32(~(~u_input.a), u_input.a), max(~func_4(~vec2<u32>(74155u, 0u), func_2(arg_0.c, vec3<f32>(global1.x, global1.x, -1000f), arg_1.zz), vec3<i32>(-1i, -18961i, 8002i)), ~var_1.x), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(select(_wgslsmith_mult_vec2_u32(u_input.b.yz, u_input.b.yx), firstTrailingBit(vec2<u32>(u_input.b.x, 0u)), vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 27351u), vec2<u32>(u_input.a, u_input.a), true), _wgslsmith_sub_vec2_u32(u_input.b.zz, vec2<u32>(u_input.b.x, u_input.b.x)))), vec2<u32>(~(~u_input.a), _wgslsmith_dot_vec4_u32(func_1(Struct_5(vec4<f32>(global1.x, 583f, -414f, 479f), vec4<f32>(-109f, -1833f, -244f, -2301f), Struct_4(32024i, u_input.b.yx, Struct_3(u_input.d)), Struct_3(u_input.d)), global1.ywx), ~vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.a)))), u_input.b);
    global0 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = -u_input.e.x <= u_input.e.x;
    let var_3 = Struct_4(-9927i, func_1(Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, global1.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1130f, global1.x, global1.x, 789f) - vec4<f32>(global1.x, global1.x, global1.x, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, -161f)), _wgslsmith_f_op_f32(-global1.x), -505f, _wgslsmith_f_op_f32(sign(-551f))), Struct_4(1i, abs(vec2<u32>(u_input.b.x, u_input.b.x)), Struct_3(vec4<i32>(-37341i, u_input.c, 0i, u_input.e.x))), Struct_3(vec4<i32>(0i, u_input.d.x, u_input.c, u_input.c) | u_input.d)), global1.yyx).yy, Struct_3(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(reverseBits(-vec3<i32>(1i, var_3.a, u_input.c)), vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.a, u_input.c, 10967i, -47561i), var_3.c.a), ~0i, abs(44118i | var_3.a))), 1376f, 10977u, u_input.e.x);
}

