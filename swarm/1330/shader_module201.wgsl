struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = ~(~select(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(13033u, 14579u, 0u, 0u), ~vec4<u32>(15539u, 1u, 28760u, 34078u)), true));
    let var_1 = _wgslsmith_dot_vec3_i32(abs(min(u_input.a, u_input.a)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(u_input.c, -1i)), ~u_input.b.x), -44519i, u_input.b.x));
    let var_2 = arg_0;
    global0 = select(arg_2.yyz, !vec3<bool>(-u_input.c != var_1, !any(arg_2.zzx), true), true);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(-278f, arg_0.b))) < 1476f;
    return arg_2;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<bool>(any(arg_1.zzx), !(!arg_1.x), !arg_1.x || arg_2.a, func_3(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -204f, arg_2.b, arg_2.b))), vec4<bool>(true, arg_1.x, select(true, true, func_3(arg_2, vec4<f32>(133f, 152f, 911f, 2044f), arg_1).x), global0.x)).x);
    let var_1 = Struct_1(global0.x, arg_2.b);
    let var_2 = arg_2;
    global0 = vec3<bool>(!(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_0, 4294967295u)), firstLeadingBit(vec2<u32>(arg_0, 32873u))) >= ~arg_0), !global0.x, !global0.x);
    var var_3 = Struct_1(all(!select(var_0.www, vec3<bool>(var_2.a, var_2.a, true), vec3<bool>(var_2.a, arg_1.x, arg_1.x))) | func_3(Struct_1(false, 1792f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b, var_2.b, -229f, 840f)))), arg_1).x, arg_2.b);
    return _wgslsmith_f_op_f32(ceil(362f));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3, _wgslsmith_add_i32(u_input.c, arg_3), _wgslsmith_div_i32(_wgslsmith_div_i32(16975i, i32(-1i) * -55967i), -1i)), ~(vec3<i32>(-1i) * -u_input.a));
    var var_1 = Struct_1(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.b))), arg_2.b)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(717f, -1603f)) + _wgslsmith_f_op_f32(var_1.b + var_1.b)), _wgslsmith_f_op_f32(select(arg_2.b, _wgslsmith_f_op_f32(-507f + -1000f), var_1.a)))));
    let var_3 = max(-arg_3, 2147483647i);
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-936f, var_1.b, var_1.b), vec3<f32>(arg_0.b, arg_0.b, arg_2.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(910f, 433f, -399f) + vec3<f32>(764f, -315f, var_1.b)), select(vec3<bool>(false, true, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, -1984f, var_2.x), vec3<f32>(var_2.x, var_1.b, var_1.b), arg_0.a)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.b, 974f, var_2.x), vec3<f32>(-768f, arg_0.b, 359f)))), !select(vec3<bool>(false, arg_2.a, arg_1), vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, false, arg_1)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2.b, var_2.x, -208f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 1035f, 564f))), vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(func_4(countOneBits(25542u), select(select(vec4<bool>(false, arg_0.a, arg_1, global0.x), vec4<bool>(global0.x, global0.x, false, arg_2.a), true), func_3(arg_0, vec4<f32>(-1257f, arg_0.b, var_1.b, -373f), vec4<bool>(false, var_1.a, false, arg_1)), vec4<bool>(true, global0.x, true, global0.x)), arg_2)), _wgslsmith_f_op_f32(930f + _wgslsmith_f_op_f32(round(arg_0.b))), var_2.x)));
    return Struct_1(any(vec4<bool>(true, false, false, true)) || all(func_3(Struct_1(true, var_2.x), vec4<f32>(-676f, 708f, arg_2.b, -815f), select(vec4<bool>(true, arg_2.a, true, false), vec4<bool>(true, arg_2.a, arg_0.a, arg_0.a), arg_2.a))), arg_0.b);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_1;
    global0 = vec3<bool>(func_3(Struct_1(!(!var_0.a), -507f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_2.x, arg_2.x, arg_0.x)))), select(!(!vec4<bool>(arg_1.a, var_0.a, false, global0.x)), vec4<bool>(global0.x, arg_1.a, true, arg_1.a), arg_1.a)).x, !any(global0.xz), true);
    let var_1 = func_2(Struct_1(var_0.a, 1f), true, arg_1, countOneBits(abs(arg_3)) << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u));
    let var_2 = countOneBits(vec3<i32>(-abs(-u_input.a.x), 3066i, select(33329i << (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, 4664i, u_input.c), vec4<i32>(0i, -1i, 0i, 7530i)), var_0.a) << (4294967295u % 32u)));
    return var_1;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    let var_2 = u_input.a;
    var var_3 = -1i;
    let var_4 = arg_0;
    return func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, 288f, var_4.b) + vec3<f32>(-206f, arg_0.b, -1571f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1, var_4.b, var_0.b))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-432f, arg_0.b, var_4.b)), vec3<f32>(arg_1, var_4.b, -2882f))))), var_1.a)), func_2(var_4, true, Struct_1(any(global0.yz) | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * 1209f)), 1i), vec3<f32>(_wgslsmith_f_op_f32(var_0.b + -2251f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2391f * -372f), _wgslsmith_f_op_f32(arg_1 + var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b * arg_0.b), _wgslsmith_f_op_f32(max(-1363f, var_1.b)))) * -874f)), -44909i);
}

fn func_7(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1231f, arg_3))) + vec2<f32>(_wgslsmith_f_op_f32(max(arg_3, -394f)), 2196f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_2)), vec2<f32>(868f, _wgslsmith_f_op_f32(arg_0.b * arg_2)))))) * vec2<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2)));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-421f, var_0.x), _wgslsmith_f_op_f32(exp2(arg_2)), 293f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1096f, arg_3, -353f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(max(var_0.x, var_0.x)), -2106f, arg_3) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, arg_0.b, arg_0.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -1062f, -821f, 602f) + vec4<f32>(arg_3, -447f, var_0.x, 580f)))))));
    var var_2 = var_1.x;
    global0 = select(vec3<bool>(true, true, true), !vec3<bool>(false, any(!vec4<bool>(arg_0.a, false, arg_1.x, false)), !all(vec2<bool>(arg_1.x, arg_1.x))), select(!arg_1.wzz, vec3<bool>(false, any(vec3<bool>(arg_0.a, true, true)), true), true));
    let var_3 = 43834i != firstLeadingBit(min(i32(-1i) * -2147483647i, u_input.b.x ^ abs(u_input.a.x)));
    return func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.wwy))), Struct_1(!arg_1.x, _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.zzx * var_1.zxx)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -1491f)), 1183f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(round(arg_2)))), false)), 4618i);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = func_7(func_6(func_5(vec3<f32>(_wgslsmith_div_f32(-534f, -226f), _wgslsmith_f_op_f32(step(arg_0.b, arg_1.x)), _wgslsmith_f_op_f32(-450f * arg_0.b)), func_2(arg_0, true, Struct_1(true, arg_1.x), -26620i), vec3<f32>(2437f, _wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x), u_input.c << (~0u % 32u)), -130f, abs(~(~1u))), func_3(arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.x, 1142f, 378f, arg_0.b), _wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(-329f, arg_1.x, arg_0.b, -1000f))))), select(func_3(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1186f, 497f, 1284f) - vec4<f32>(-696f, -1325f, 553f, arg_0.b)), vec4<bool>(true, true, true, true)), vec4<bool>(true, 1i <= u_input.c, all(vec4<bool>(arg_0.a, true, true, true)), true), true)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(848f))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(488f, var_0.b), -348f) + -544f) + var_0.b)));
    global0 = func_3(var_0, arg_1, vec4<bool>(!global0.x & false, !(!global0.x), !var_0.a, global0.x)).wzw;
    var var_2 = ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(118858u, 4294967295u, 0u, 3u), ~vec4<u32>(86569u, 0u, 68239u, 4294967295u))));
    global0 = vec3<bool>(all(vec2<bool>(func_3(Struct_1(var_0.a, var_0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(430f, arg_1.x, -520f, 1000f) * vec4<f32>(-1835f, 743f, var_0.b, var_0.b)), select(vec4<bool>(var_0.a, var_0.a, var_0.a, global0.x), vec4<bool>(arg_0.a, arg_0.a, global0.x, false), true)).x, _wgslsmith_f_op_f32(f32(-1f) * -995f) != _wgslsmith_f_op_f32(-arg_1.x))), true, func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(125f, var_0.b, arg_1.x)))), Struct_1(1i <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.b.x), vec4<i32>(-2147483647i, 1i, -2789i, u_input.c)), _wgslsmith_f_op_f32(-var_0.b)), vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -662f))), arg_1.x, _wgslsmith_div_f32(arg_1.x, -1166f)), u_input.b.x).a);
    return Struct_1(global0.x, _wgslsmith_f_op_f32(-arg_0.b));
}

fn func_8(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    global0 = vec3<bool>(false, arg_0.b != func_6(func_7(arg_0, vec4<bool>(false, global0.x, true, arg_0.a), -1233f, func_2(Struct_1(arg_0.a, arg_0.b), false, arg_0, u_input.c).b), _wgslsmith_f_op_f32(-arg_0.b), ~firstLeadingBit(10275u)).b, arg_0.a);
    var var_0 = u_input.b.x;
    var var_1 = -1i;
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(247f + _wgslsmith_f_op_f32(trunc(arg_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f - 1660f)))))));
    let var_3 = func_1(func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -720f, var_2.b), vec3<f32>(var_2.b, 2461f, arg_0.b))), vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1044f), arg_0.b))), Struct_1(!(!var_2.a), _wgslsmith_f_op_f32(arg_0.b * -1246f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b, -541f, var_2.b), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.b, 220f, var_2.b), vec3<f32>(arg_0.b, arg_0.b, 182f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.b, 469f, -414f), vec3<f32>(1149f, -317f, -835f)))))), u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, _wgslsmith_f_op_f32(-424f - arg_0.b), _wgslsmith_f_op_f32(f32(-1f) * -230f), _wgslsmith_f_op_f32(-func_7(arg_0, vec4<bool>(false, false, global0.x, false), -193f, 259f).b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b + var_3.b) - var_2.b) - -106f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.a.yy;
    global0 = !(!select(vec3<bool>(global0.x & true, true, false != global0.x), !select(vec3<bool>(global0.x, true, true), vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, true)), true));
    let var_1 = -1422f;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1067f));
    global0 = vec3<bool>(!(true | (true & global0.x)), false, all(vec4<bool>(global0.x, true, global0.x, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_add_u32(~60869u, 34368u), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 62300u)), _wgslsmith_add_vec2_u32(vec2<u32>(18705u, 12631u), vec2<u32>(1u, 78141u)))) & _wgslsmith_div_u32(min(~1u, 1u), ~min(0u, 1u)), var_1, _wgslsmith_div_vec2_f32(vec2<f32>(var_2, _wgslsmith_f_op_f32(func_8(func_1(Struct_1(true, var_1), vec4<f32>(-254f, var_2, -1000f, var_2)), vec2<u32>(22554u, 4294967295u)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1250f, -676f), vec2<f32>(var_2, var_1))))))), firstTrailingBit(vec3<u32>(firstTrailingBit(firstLeadingBit(68046u)), 1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(35301u, 4294967295u), 29526u, 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-var_2)))));
}

