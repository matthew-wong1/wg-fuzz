struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(44333u, Struct_1(-16325i, 4294967295u)), vec4<bool>(true, true, false, false), 1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_5(global0.a, !select(select(select(vec4<bool>(arg_1.b, true, arg_1.b, true), global0.b, arg_1.b), select(global0.b, global0.b, false), vec4<bool>(global0.b.x, arg_1.b, arg_1.b, global0.b.x)), !select(vec4<bool>(false, true, false, global0.b.x), vec4<bool>(arg_1.b, global0.b.x, arg_1.b, global0.b.x), global0.b), arg_1.b), arg_1.e.x);
    var_0 = Struct_5(var_0.a, select(vec4<bool>(_wgslsmith_f_op_f32(-var_0.c) == _wgslsmith_f_op_f32(1444f * 1273f), any(vec4<bool>(true, false, false, global0.b.x)), all(vec3<bool>(var_0.b.x, var_0.b.x, false)), (-38136i & global0.a.b.a) < -2147483647i), vec4<bool>(_wgslsmith_f_op_f32(round(arg_1.e.x)) != global0.c, !global0.b.x, true || (var_0.c < global0.c), false), !(!(!vec4<bool>(arg_1.b, false, arg_1.b, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c))) + 1000f) * _wgslsmith_f_op_f32(-arg_1.e.x)));
    let var_1 = Struct_3(1u, Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(-34347i, 1i), u_input.c | vec2<i32>(2147483647i, 15796i)), ~63392u));
    var var_2 = ~_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.b.a, arg_1.c.b.a, var_0.a.b.a), ~vec3<i32>(u_input.b, 1i, var_0.a.b.a)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.a.b.a, 2147483647i << (var_1.b.b % 32u), _wgslsmith_clamp_i32(arg_1.c.b.a, 2147483647i, arg_1.c.b.a)), 1i));
    var var_3 = select(var_0.b.wzx, select(var_0.b.wzy, global0.b.yzz, select(select(vec3<bool>(true, true, false), !vec3<bool>(arg_1.b, true, false), global0.b.x), select(global0.b.xyy, !vec3<bool>(arg_1.b, true, true), arg_1.b), select(vec3<bool>(false, arg_1.b, false), var_0.b.wyw, !var_0.b.x))), _wgslsmith_f_op_f32(trunc(1416f)) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.e.x, 1136f))), global0.c)));
    return true;
}

fn func_4(arg_0: bool) -> u32 {
    global0 = Struct_5(global0.a, !global0.b, 945f);
    let var_0 = -741f;
    var var_1 = Struct_4(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~0u, max(global0.a.b.b, 4294967295u), max(0u, u_input.a.x)), ~(~vec3<u32>(1u, 80481u, global0.a.a))), vec3<u32>(u_input.a.x, 2620u ^ _wgslsmith_clamp_u32(1u, u_input.a.x, 59949u), 47393u)), false, Struct_3(4294967295u, global0.a.b), Struct_2(_wgslsmith_clamp_u32(max(43320u, global0.a.b.b & 1u), ~u_input.a.x, ~(4294967295u >> (u_input.a.x % 32u)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(621f, global0.c, 1002f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1107f, global0.c, 2684f), vec3<f32>(236f, 1000f, global0.c)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, var_0, 471f)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(791f, var_0, -1000f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c, -151f, 703f))))), select(select(true, false, true), true, func_3(vec3<u32>(49009u, global0.a.a, global0.a.a), Struct_4(vec3<u32>(u_input.a.x, 39100u, 29922u), true, global0.a, Struct_2(4294967295u), vec3<f32>(-692f, 1496f, 684f)), vec4<u32>(global0.a.b.b, 5029u, 8747u, 1u))) && false)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.e.xz)));
    var_1 = Struct_4(var_1.a, any(global0.b), Struct_3(var_1.a.x, global0.a.b), Struct_2(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.b.b, u_input.a.x), reverseBits(vec3<u32>(111744u, u_input.a.x, 40540u))))), vec3<f32>(1525f, var_1.e.x, 1854f));
    return _wgslsmith_mult_u32(_wgslsmith_mod_u32(~4294967295u, max(~(~9374u), _wgslsmith_mod_u32(0u, min(u_input.a.x, var_1.d.a)))), u_input.a.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c * arg_2.x), global0.c), _wgslsmith_div_f32(global0.c, -2464f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c + -1000f), _wgslsmith_div_f32(global0.c, 715f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.wyx));
    let var_1 = Struct_4(vec3<u32>(8219u, global0.a.b.b, ~(_wgslsmith_mult_u32(global0.a.b.b, u_input.a.x) ^ ~64960u)), false, global0.a, Struct_2(func_4(func_3(vec3<u32>(u_input.a.x, arg_0.x, global0.a.a), Struct_4(vec3<u32>(4294967295u, global0.a.b.b, 23305u), global0.b.x, global0.a, Struct_2(4294967295u), arg_2.ywx), ~vec4<u32>(u_input.a.x, arg_0.x, 0u, 3023u)))), arg_2.ywx);
    var var_2 = var_1.a.yy;
    var_0 = var_1.e;
    return Struct_4(var_1.a, any(vec4<bool>(global0.b.x || false, select(false, global0.b.x, true), true, !any(global0.b))), var_1.c, var_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, global0.c, 1022f))) - _wgslsmith_f_op_vec3_f32(ceil(var_1.e))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, 910f, _wgslsmith_f_op_f32(-arg_2.x))))));
}

fn func_5(arg_0: Struct_4) -> Struct_4 {
    let var_0 = abs(~(87788u << (select(22580u, ~46449u, any(vec2<bool>(arg_0.b, false))) % 32u)));
    global0 = Struct_5(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a.a, global0.a.b.b, 53101u, 47288u) | vec4<u32>(60291u, 4294967295u, var_0, 4294967295u), select(vec4<u32>(global0.a.b.b, arg_0.c.a, var_0, 0u), vec4<u32>(var_0, u_input.a.x, global0.a.b.b, 757u), arg_0.b)) & _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, arg_0.a.x, 67853u), vec4<u32>(1u, var_0, 0u, 64721u)), min(vec4<u32>(arg_0.c.a, 1u, 0u, 4294967295u), vec4<u32>(55209u, 1u, 75191u, 4294967295u))), _wgslsmith_add_i32(max(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, global0.a.b.a), vec3<i32>(u_input.b, 2147483647i, global0.a.b.a)), 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c.b.a, global0.a.b.a, global0.a.b.a) & vec3<i32>(global0.a.b.a, global0.a.b.a, arg_0.c.b.a), -vec3<i32>(-27349i, u_input.b, -1i))), vec4<f32>(_wgslsmith_f_op_f32(round(-868f)), _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(-arg_0.e.x)), _wgslsmith_div_f32(-724f, _wgslsmith_f_op_f32(f32(-1f) * -365f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(937f, -1164f)) * -359f))).c, !vec4<bool>(any(select(global0.b.xwx, vec3<bool>(global0.b.x, true, false), vec3<bool>(true, arg_0.b, true))), global0.b.x, any(!global0.b.yxy), !func_2(vec4<u32>(u_input.a.x, u_input.a.x, arg_0.d.a, 66091u), u_input.c.x, vec4<f32>(1374f, -936f, -441f, 1587f)).b), global0.c);
    global0 = Struct_5(Struct_3(firstTrailingBit(4294967295u), arg_0.c.b), global0.b, 1008f);
    global0 = Struct_5(func_2(vec4<u32>(~var_0, 78579u, 7909u, ~global0.a.a), firstLeadingBit(~(~global0.a.b.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-664f, arg_0.e.x, 698f, arg_0.e.x), vec4<f32>(1000f, 389f, global0.c, global0.c))))).c, !vec4<bool>(true, ~u_input.a.x > firstTrailingBit(arg_0.a.x), false, true), _wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x));
    var var_1 = Struct_5(func_2(~abs(abs(vec4<u32>(19182u, var_0, 0u, 32878u))), arg_0.c.b.a, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.x * -736f))), global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c - 590f) * 1341f), -729f)).c, global0.b, _wgslsmith_f_op_f32(172f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.e.x), _wgslsmith_f_op_f32(round(1673f))) + global0.c)));
    return Struct_4(arg_0.a, all(var_1.b.xw), Struct_3(~(4294967295u ^ var_1.a.b.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.a.x, u_input.a.x), arg_0.a << (vec3<u32>(var_0, 4294967295u, var_1.a.b.b) % vec3<u32>(32u))) % 32u), func_2(~vec4<u32>(3833u, 24613u, 3636u, arg_0.a.x) | ~vec4<u32>(var_0, var_1.a.a, global0.a.b.b, var_1.a.b.b), -2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, global0.c, var_1.c, -972f))).c.b), Struct_2(min(~firstLeadingBit(arg_0.c.b.b), ~(~5078u))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -358f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * _wgslsmith_f_op_f32(select(328f, -222f, false)))), _wgslsmith_f_op_f32(sign(arg_0.e.x))));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_1) -> Struct_4 {
    let var_0 = func_2(_wgslsmith_div_vec4_u32(vec4<u32>((global0.a.a | global0.a.a) << (_wgslsmith_mult_u32(51069u, u_input.a.x) % 32u), ~u_input.a.x, 53425u, ~(~1u)), (select(vec4<u32>(8054u, global0.a.a, 6035u, u_input.a.x), vec4<u32>(0u, arg_3.b, 0u, u_input.a.x), global0.b) >> (abs(vec4<u32>(1u, u_input.a.x, arg_3.b, 25361u)) % vec4<u32>(32u))) | vec4<u32>(min(global0.a.b.b, 4294967295u), _wgslsmith_sub_u32(4294967295u, 0u), firstLeadingBit(1u), u_input.a.x)), -36983i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(614f, global0.c, arg_1.e.x, arg_2)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(468f, -1367f, global0.c, -538f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 189f, global0.c, 1038f)))))).d;
    var var_1 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, ~(~55040u))), ~u_input.a << ((u_input.a >> (select(arg_1.a.zy, vec2<u32>(1u, global0.a.a), global0.b.wx) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_2 = func_2(select(~(abs(vec4<u32>(4294967295u, u_input.a.x, arg_3.b, 0u)) >> (vec4<u32>(597u, 4294967295u, var_0.a, 0u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(34056u, var_1.x, global0.a.b.b, 4294967295u)), abs(firstTrailingBit(vec4<u32>(var_1.x, 32543u, arg_3.b, arg_1.a.x)))), select(!(!vec4<bool>(global0.b.x, false, true, false)), global0.b, true)), arg_0.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1206f, arg_2, global0.c, -1264f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, 883f, arg_1.e.x, -186f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.e.x, global0.c, arg_1.e.x, 500f) - vec4<f32>(-1770f, 264f, arg_1.e.x, -1585f)) * vec4<f32>(497f, -1470f, -1116f, global0.c)))))).c;
    let var_3 = i32(-1i) * -_wgslsmith_sub_i32(firstLeadingBit(var_2.b.a) | _wgslsmith_div_i32(arg_3.a, arg_1.c.b.a), ~_wgslsmith_clamp_i32(-6473i, 19785i, 4991i));
    var var_4 = vec4<i32>(1i, arg_3.a, arg_1.c.b.a, ~(~(-1i >> (u_input.a.x % 32u)))) << (vec4<u32>(~(~var_1.x >> (func_5(Struct_4(arg_1.a, global0.b.x, global0.a, var_0, vec3<f32>(arg_2, -2049f, -1585f))).d.a % 32u)), ~_wgslsmith_add_u32(0u, arg_3.b), ~39427u, var_1.x) % vec4<u32>(32u));
    return arg_1;
}

fn func_7(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2) -> vec4<u32> {
    global0 = Struct_5(func_6(firstLeadingBit(~(-vec3<i32>(-44509i, 7646i, arg_0.c.b.a))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))) - -106f), func_6(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.c.b.a, u_input.b, 1i), vec3<i32>(10216i, 0i, u_input.b), vec3<bool>(arg_0.b, false, arg_0.b)), min(vec3<i32>(-42968i, u_input.c.x, -1i), vec3<i32>(-2147483647i, 22908i, 10031i))), arg_0, arg_0.e.x, Struct_1(~15155i, min(1u, arg_0.c.b.b))).c.b).c, vec4<bool>(!global0.b.x || !all(vec4<bool>(global0.b.x, true, true, arg_0.b)), true, (arg_0.c.b.a >> (1u % 32u)) < 2147483647i, arg_0.b), arg_1.x);
    let var_0 = true;
    let var_1 = vec2<u32>(1u, reverseBits(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2.a >> (arg_0.a.x % 32u), _wgslsmith_mult_u32(4294967295u, u_input.a.x)), abs(firstLeadingBit(0u)))));
    var var_2 = Struct_1(0i, ~u_input.a.x);
    var var_3 = select(~abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.a, -2147483647i, u_input.b), vec3<i32>(-2147483647i, var_2.a, -73311i)), vec3<i32>(arg_0.c.b.a, -13017i, u_input.c.x), true)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(select(arg_0.c.b.a, 76163i, false), arg_0.c.b.a), -4967i, ~(var_2.a ^ var_2.a)), ~vec3<i32>(_wgslsmith_sub_i32(-1i, 37695i), arg_0.c.b.a, -1i)), vec3<bool>(any(!vec3<bool>(arg_0.b, var_0, global0.b.x)) && true, all(!global0.b), select(true, !func_6(vec3<i32>(var_2.a, u_input.c.x, var_2.a), Struct_4(arg_0.a, var_0, Struct_3(arg_2.a, Struct_1(u_input.b, 0u)), Struct_2(9834u), arg_1), -1000f, global0.a.b).b, ~28968u < var_1.x)));
    return _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(abs(~countOneBits(vec4<u32>(1u, var_1.x, 1u, 1u))), ~vec4<u32>(~3026u, firstLeadingBit(1089u), 0u, var_2.b)), ~vec4<u32>(64499u, 41767u, ~(~var_2.b), firstTrailingBit(0u) | 1u));
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = func_7(func_6(abs(select(-vec3<i32>(arg_0.a, global0.a.b.a, -2147483647i), firstTrailingBit(vec3<i32>(u_input.c.x, 1i, -1i)), u_input.c.x < arg_0.a)), func_5(func_2(reverseBits(vec4<u32>(5634u, 1831u, u_input.a.x, arg_0.b)), 10309i, vec4<f32>(351f, global0.c, global0.c, 1018f))), global0.c, func_2(~(vec4<u32>(arg_0.b, global0.a.a, arg_0.b, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_clamp_i32(func_5(Struct_4(vec3<u32>(arg_0.b, arg_0.b, 1u), true, global0.a, Struct_2(44392u), vec3<f32>(759f, global0.c, global0.c))).c.b.a, global0.a.b.a, arg_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, global0.c, 556f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, -1110f, 229f, global0.c)))).c.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) - 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-347f, global0.c))))) - vec3<f32>(func_2(vec4<u32>(4294967295u, global0.a.b.b, u_input.a.x, u_input.a.x), firstTrailingBit(arg_0.a), vec4<f32>(387f, 1118f, global0.c, global0.c)).e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.c, -369f))), 1132f)), Struct_2(~func_4(!global0.b.x)));
    var var_1 = any(select(!global0.b.zw, global0.b.zx, any(vec3<bool>(!global0.b.x, any(global0.b), all(vec3<bool>(true, global0.b.x, false))))));
    let var_2 = ~var_0.wxy;
    var_1 = global0.b.x;
    var_1 = func_6(-(vec3<i32>(arg_0.a, _wgslsmith_sub_i32(global0.a.b.a, 36213i), -u_input.c.x) << ((vec3<u32>(var_2.x, arg_0.b, u_input.a.x) << (_wgslsmith_sub_vec3_u32(var_2, var_0.yyz) % vec3<u32>(32u))) % vec3<u32>(32u))), func_6(countOneBits(abs(vec3<i32>(arg_0.a, -2147483647i, -2147483647i))) >> (max(var_0.wyw, func_5(Struct_4(var_0.zwz, false, Struct_3(u_input.a.x, Struct_1(global0.a.b.a, 1u)), Struct_2(23284u), vec3<f32>(852f, -1131f, -1000f))).a) % vec3<u32>(32u)), func_5(Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), vec3<u32>(0u, arg_0.b, 37681u), var_2), any(vec3<bool>(false, true, true)), Struct_3(1u, Struct_1(u_input.b, global0.a.a)), Struct_2(var_2.x), _wgslsmith_div_vec3_f32(vec3<f32>(196f, global0.c, 2190f), vec3<f32>(-878f, global0.c, 650f)))), -1570f, Struct_1(_wgslsmith_sub_i32(2147483647i, arg_0.a), 14886u)), -707f, func_5(Struct_4(abs(~vec3<u32>(var_0.x, u_input.a.x, global0.a.a)), false, func_2(vec4<u32>(0u, u_input.a.x, 4294967295u, 21128u), global0.a.b.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-933f, -1228f, global0.c, global0.c) + vec4<f32>(global0.c, 227f, global0.c, 661f))).c, func_6(vec3<i32>(2147483647i, 2147483647i, 7248i) << (var_2 % vec3<u32>(32u)), func_6(vec3<i32>(u_input.b, global0.a.b.a, -3538i), Struct_4(vec3<u32>(arg_0.b, 1u, 17105u), global0.b.x, global0.a, Struct_2(0u), vec3<f32>(global0.c, global0.c, -162f)), global0.c, Struct_1(0i, global0.a.b.b)), _wgslsmith_f_op_f32(-global0.c), Struct_1(global0.a.b.a, 17654u)).d, vec3<f32>(223f, 263f, 680f))).c.b).b;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, global0.c, global0.c)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2356f, global0.c, global0.c, global0.c))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, global0.c, -1055f, 249f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(-u_input.b, global0.a.b.a), abs(-u_input.c.x), ~0i, -30384i) << (~(~vec4<u32>(0u, 1u, 0u, 4294967295u) | _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.b.b, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, 24710u, global0.a.a, u_input.a.x))) % vec4<u32>(32u)), ~countOneBits(abs(vec4<i32>(u_input.c.x, 4598i, global0.a.b.a, 56194i) & vec4<i32>(-4233i, u_input.b, 8591i, 0i))), vec2<f32>(_wgslsmith_f_op_f32(sign(global0.c)), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-global0.c))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1108f), -2010f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(~(-539i), 1u))), vec4<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(776f, -1294f)), _wgslsmith_f_op_f32(f32(-1f) * -600f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(1000f - global0.c))), global0.b.x)));
}

