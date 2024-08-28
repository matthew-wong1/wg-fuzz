struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32> = vec3<f32>(804f, -1600f, -136f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: i32) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))), global0.b, _wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -7703i, -9221i), min(-35128i, 2147483647i)), -vec3<i32>(_wgslsmith_div_i32(~(-21050i), -1i), -arg_1 | u_input.c.x, 7166i), ~select(_wgslsmith_mod_vec4_u32(vec4<u32>(65223u, 9189u, u_input.e, global0.e.x), vec4<u32>(u_input.d, global0.e.x, global0.e.x, 15370u)), vec4<u32>(max(global0.e.x, 72908u), global0.e.x, 1u, min(u_input.e, 1u)), !(!vec4<bool>(global0.b, true, true, global0.b))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1297f)), _wgslsmith_f_op_f32(trunc(arg_0)), 102f);
    var var_0 = !select(!(!(!vec4<bool>(global0.b, global0.b, true, global0.b))), select(select(vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(global0.b, false, true, false)), vec4<bool>(true, true, global0.b, arg_0 != -139f), select(vec4<bool>(true, true, false, global0.b), !vec4<bool>(global0.b, false, true, global0.b), true)), vec4<bool>(!global0.b, (false || global0.b) || false, true, true));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(global0.a, _wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(arg_0, -1888f, global0.a.x, global1.x)))))), select(false, var_0.x, false), abs(1i), global0.d, _wgslsmith_sub_vec4_u32(global0.e, global0.e));
    let var_1 = -296f;
    return _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(abs(global1.x)));
}

fn func_2(arg_0: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(step(global0.a.x, _wgslsmith_f_op_f32(global0.a.x + 852f))), firstLeadingBit(arg_0.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.x - global0.a.x), -778f)), 1201f, arg_0.a.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(410f, 1102f, _wgslsmith_f_op_f32(951f - arg_0.a.x), _wgslsmith_div_f32(-678f, global1.x)))), vec4<f32>(-501f, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -806f) + -892f))));
    let var_1 = arg_0;
    let var_2 = arg_0.e.zyw;
    var var_3 = select(!select(select(select(vec4<bool>(global0.b, false, true, true), vec4<bool>(true, false, global0.b, global0.b), vec4<bool>(var_1.b, true, arg_0.b, arg_0.b)), vec4<bool>(false, var_1.b, var_1.b, false), true), select(vec4<bool>(arg_0.b, arg_0.b, var_1.b, false), !vec4<bool>(global0.b, var_1.b, var_1.b, var_1.b), vec4<bool>(false, arg_0.b, false, var_1.b)), !(!vec4<bool>(false, global0.b, arg_0.b, false))), !vec4<bool>(global0.b, var_1.b, false && any(vec2<bool>(false, true)), var_1.b), vec4<bool>(var_1.a.x == -2697f, all(select(select(vec4<bool>(true, global0.b, var_1.b, arg_0.b), vec4<bool>(var_1.b, false, true, arg_0.b), true), select(vec4<bool>(var_1.b, true, var_1.b, global0.b), vec4<bool>(arg_0.b, global0.b, var_1.b, arg_0.b), global0.b), true)), var_1.b, false));
    return -630f;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = u_input.c.yx;
    let var_2 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(firstTrailingBit(-arg_1.d), global0.d), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-63240i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 21605i, var_0.d.x, var_0.c), vec4<i32>(1i, -1i, 0i, -43861i))), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.d.x, var_0.d.x), reverseBits(global0.d.zz))), ~_wgslsmith_mult_i32(~u_input.c.x, firstLeadingBit(arg_1.c))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-716f, -717f, arg_0.x, -118f) - arg_0), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -2300f, 1162f, -1626f)))), global0.b, _wgslsmith_sub_i32(global0.d.x, ~_wgslsmith_mod_i32(firstTrailingBit(global0.d.x), var_2)), vec3<i32>(-max(~u_input.b, arg_1.d.x), firstTrailingBit(86705i), _wgslsmith_sub_i32(var_1.x, _wgslsmith_div_i32(-75816i & var_1.x, 0i))), ~reverseBits(_wgslsmith_sub_vec4_u32(arg_1.e, var_0.e)));
    var var_4 = !vec4<bool>(!all(select(vec4<bool>(global0.b, true, false, true), vec4<bool>(false, true, var_3.b, true), vec4<bool>(false, true, false, false))), true, !(u_input.d < 99323u) & global0.b, true);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = arg_3;
    global0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a.x, global1.x), _wgslsmith_f_op_f32(-840f - -623f)), _wgslsmith_f_op_f32(ceil(arg_0.a.x)), global0.a.x, _wgslsmith_f_op_f32(func_2(Struct_1(global0.a, arg_0.b, 11577i, u_input.c.zzz, global0.e)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, var_0.a.x)), -1151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * _wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-global0.a.x))), arg_3, ~arg_0.e.x);
    var_0 = func_4(arg_0.a, Struct_1(var_0.a, true, 41583i, u_input.c.zzz, vec4<u32>(var_0.e.x, var_0.e.x, arg_0.e.x >> (var_0.e.x % 32u), arg_0.e.x) >> ((vec4<u32>(arg_2.x, 28972u, u_input.a, arg_0.e.x) & abs(vec4<u32>(1u, 0u, 8231u, 1u))) % vec4<u32>(32u))), _wgslsmith_div_u32(1u, arg_2.x));
    let var_1 = arg_3;
    let var_2 = true;
    return select(vec2<bool>(!select(false, true, var_0.b) == arg_1, var_2), vec2<bool>(!(!(false | arg_3.b)), global0.b & true), vec2<bool>(!var_2, 27824u != ~min(var_1.e.x, 103894u)));
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(u_input.b, -_wgslsmith_clamp_i32(u_input.b, -1i, u_input.c.x), _wgslsmith_div_i32(~(-4039i), ~_wgslsmith_dot_vec2_i32(global0.d.zz, vec2<i32>(u_input.b, global0.c))) | ~1i, 54829i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1319f)))))));
    var var_2 = u_input.b | -2147483647i;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-514f, _wgslsmith_f_op_f32(ceil(-1305f)), _wgslsmith_f_op_f32(abs(global0.a.x)), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-909f, 1549f, 287f, 354f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-267f, var_1, global1.x, var_1)))))), !(!func_4(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1272f, global1.x, var_1), global0.a), Struct_1(vec4<f32>(-516f, global1.x, -1052f, var_1), arg_0.x, u_input.b, vec3<i32>(-20372i, global0.d.x, -30265i), vec4<u32>(4294967295u, u_input.a, 0u, 4294967295u)), ~u_input.d).b), ~(-48164i), var_0.wwz, vec4<u32>(firstTrailingBit(~global0.e.x), 27374u >> (u_input.d % 32u), abs(countOneBits(31220u)), _wgslsmith_div_u32(1u, 22346u)) ^ abs(firstTrailingBit(global0.e)));
    var var_3 = select(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, ~(-5729i), abs(global0.c)), max(-_wgslsmith_div_vec3_i32(vec3<i32>(43136i, global0.c, 33246i), vec3<i32>(1i, 1i, 26995i)), vec3<i32>(9015i, _wgslsmith_div_i32(var_0.x, var_0.x), 1i))), var_0.x, arg_0.x);
    return Struct_1(vec4<f32>(-206f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + global1.x), _wgslsmith_f_op_f32(ceil(-601f))), all(select(vec4<bool>(arg_0.x && global0.b, !arg_0.x, true && global0.b, true), vec4<bool>(func_1(Struct_1(vec4<f32>(-301f, global0.a.x, 1000f, -1353f), true, -2147483647i, vec3<i32>(var_0.x, 39263i, var_0.x), global0.e), false, global0.e.yz, Struct_1(vec4<f32>(global1.x, global1.x, 864f, global0.a.x), true, global0.d.x, u_input.c.wxx, global0.e)).x, arg_0.x, true, global0.b), vec4<bool>(true, !global0.b, all(vec3<bool>(global0.b, global0.b, false)), !global0.b))), 1i, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, firstTrailingBit(abs(-2147483647i)), var_0.x), ~(vec3<i32>(var_0.x, u_input.c.x, var_0.x) | vec3<i32>(u_input.c.x, u_input.c.x, -28028i)) ^ -(~vec3<i32>(-17969i, -7378i, 18612i))), _wgslsmith_mult_vec4_u32(global0.e, ~_wgslsmith_mult_vec4_u32(~global0.e, vec4<u32>(global0.e.x, u_input.e, u_input.d, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-437f, global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global0.a.x) - vec2<f32>(694f, -393f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, global0.a.x) * vec2<f32>(1339f, global1.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-470f, global0.a.x)))), _wgslsmith_f_op_f32(global0.a.x * -516f)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -502f), global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), -307f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1096f, _wgslsmith_f_op_f32(sign(var_0.x)), global1.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1840f, -1420f, 186f)), global0.a.xzw)))));
    var var_1 = func_5(vec3<bool>(select(!any(vec3<bool>(true, true, true)), all(func_1(Struct_1(vec4<f32>(1264f, 1060f, var_0.x, global1.x), global0.b, -1i, u_input.c.www, global0.e), global0.b, global0.e.zz, Struct_1(global0.a, global0.b, u_input.b, global0.d, global0.e))), global0.b), global0.b, true));
    let var_2 = var_1.d;
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(-global0.a), func_5(vec3<bool>(false, true, any(!vec4<bool>(var_1.b, var_1.b, true, true)))), max(~(~global0.e.x), _wgslsmith_sub_u32(global0.e.x, max(7494u, _wgslsmith_mod_u32(var_1.e.x, u_input.d)))));
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-221f, firstLeadingBit(func_5(select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.b, false), vec3<bool>(true, global0.b, false), true), vec3<bool>(true, true, false))).e.x), global0.d, firstTrailingBit(max(var_3.e.x ^ _wgslsmith_dot_vec2_u32(var_4.e.wy, var_3.e.xy), max(~4294967295u, ~var_1.e.x))));
}

