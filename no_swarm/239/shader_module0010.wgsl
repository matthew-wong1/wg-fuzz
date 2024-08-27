struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec4<u32>(0u, 70747u, 30737u, 19392u), vec3<i32>(5264i, -1i, i32(-2147483648)), 29299i, vec4<u32>(63935u, 27749u, 26849u, 4294967295u)), Struct_1(vec4<u32>(36624u, 1u, 41645u, 1u), vec3<i32>(19456i, 25878i, -17225i), 0i, vec4<u32>(4646u, 1u, 4294967295u, 34032u)), Struct_1(vec4<u32>(56642u, 4294967295u, 25190u, 96036u), vec3<i32>(i32(-2147483648), 28030i, 32874i), -4575i, vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 9460u, 0u), vec3<i32>(-18776i, -12548i, 2147483647i), 3738i, vec4<u32>(4294967295u, 1u, 37211u, 65335u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 6454u), vec3<i32>(11369i, -2453i, -30411i), -12822i, vec4<u32>(53779u, 1u, 28268u, 1u)), Struct_1(vec4<u32>(1u, 8745u, 4294967295u, 0u), vec3<i32>(2147483647i, 9029i, i32(-2147483648)), -40788i, vec4<u32>(29335u, 4294967295u, 99501u, 89295u)), Struct_1(vec4<u32>(20554u, 78409u, 1u, 4294967295u), vec3<i32>(-906i, -1i, -17883i), -10149i, vec4<u32>(34455u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 54099u), vec3<i32>(1i, 2147483647i, 15793i), 1i, vec4<u32>(44803u, 0u, 1u, 29661u)), Struct_1(vec4<u32>(24016u, 13168u, 5288u, 0u), vec3<i32>(-1i, -14961i, 17308i), -9551i, vec4<u32>(4294967295u, 8721u, 3430u, 6392u)), Struct_1(vec4<u32>(35839u, 6032u, 20537u, 1u), vec3<i32>(-9666i, 1i, -1i), 31558i, vec4<u32>(4294967295u, 30500u, 0u, 6922u)), Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 76145u), vec3<i32>(1i, 1i, 2147483647i), i32(-2147483648), vec4<u32>(4294967295u, 94140u, 14280u, 0u)), Struct_1(vec4<u32>(15703u, 38407u, 63266u, 68023u), vec3<i32>(-12041i, i32(-2147483648), 0i), 1i, vec4<u32>(27803u, 604u, 1u, 0u)), Struct_1(vec4<u32>(1u, 76632u, 84288u, 50792u), vec3<i32>(-15027i, -9625i, 2147483647i), -1i, vec4<u32>(23359u, 67499u, 4294967295u, 16237u)), Struct_1(vec4<u32>(79930u, 40204u, 4294967295u, 19022u), vec3<i32>(i32(-2147483648), 1i, 23618i), -1i, vec4<u32>(4294967295u, 67637u, 0u, 52729u)), Struct_1(vec4<u32>(23361u, 1u, 41302u, 1u), vec3<i32>(1i, 2147483647i, 1i), 9258i, vec4<u32>(0u, 12497u, 48998u, 262u)), Struct_1(vec4<u32>(1u, 39892u, 44156u, 37552u), vec3<i32>(36597i, 0i, 34697i), 14874i, vec4<u32>(7344u, 8487u, 0u, 33577u)));

var<private> global1: bool;

var<private> global2: f32 = -771f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_3) -> bool {
    global1 = any(select(select(select(vec2<bool>(arg_0.c.a.x, true), vec2<bool>(true, true), arg_0.c.b.xy), vec2<bool>(any(arg_0.c.b.wz), true), arg_0.c.b.ww), arg_0.c.b.wz, all(vec4<bool>(false, true, arg_0.c.b.x, !arg_0.c.b.x))));
    global1 = true;
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, 513f, arg_0.b.x, -705f), vec4<f32>(arg_0.c.c, 1904f, arg_0.d, -805f))))))));
    global1 = true;
    var var_1 = arg_0.c;
    return arg_0.c.b.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = select(!all(var_0.b), true || arg_1.b.x, true);
    global1 = any(!vec4<bool>(var_0.b.x & false, any(vec2<bool>(true, arg_1.b.x)), all(vec2<bool>(false, true)), all(arg_1.a.xz)));
    let var_2 = u_input.a;
    let var_3 = Struct_1(vec4<u32>(1u, select(min(4294967295u, 1u), u_input.a ^ arg_0.a.x, _wgslsmith_div_f32(var_0.c, arg_1.c) < _wgslsmith_f_op_f32(max(-631f, -1370f))), min(u_input.a, u_input.d.x), _wgslsmith_dot_vec3_u32(vec3<u32>(~var_2, arg_0.a.x, 0u), vec3<u32>(arg_0.d.x, 0u, select(0u, var_2, false)))), abs(arg_0.b), arg_0.b.x, vec4<u32>(var_2, arg_0.d.x, u_input.d.x, countOneBits(reverseBits(176810u) | var_2)));
    return select(vec3<bool>(!select(true, true, var_1) & arg_1.b.x, false, true), select(select(vec3<bool>(var_1, true, arg_1.b.x), arg_1.a, arg_1.b.xzw), !vec3<bool>(var_1, !arg_1.a.x, true), !vec3<bool>(any(arg_1.b), any(var_0.a), any(vec2<bool>(true, arg_1.a.x)))), select(arg_1.a, !select(vec3<bool>(false, false, true), vec3<bool>(false, true, arg_1.b.x), select(arg_1.b.yyz, arg_1.a, vec3<bool>(false, true, false))), select(all(var_0.b), all(select(var_0.b, vec4<bool>(var_1, var_0.b.x, false, false), vec4<bool>(true, var_1, var_1, true))), all(!var_0.a.zy))));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_2(!select(select(select(vec3<bool>(true, arg_3.x, true), vec3<bool>(true, true, arg_3.x), vec3<bool>(false, true, false)), !vec3<bool>(false, false, arg_0), !vec3<bool>(false, arg_3.x, arg_3.x)), !func_3(Struct_1(vec4<u32>(u_input.d.x, 28016u, 4294967295u, arg_2.a.x), vec3<i32>(-33588i, -2147483647i, -7291i), 10870i, u_input.d), Struct_2(vec3<bool>(false, arg_0, arg_3.x), vec4<bool>(true, false, false, arg_3.x), arg_1.x), vec4<f32>(arg_1.x, 1000f, arg_1.x, arg_1.x)), arg_2.d.x != ~u_input.a), vec4<bool>(true, false != (true != (false && arg_0)), all(select(!vec3<bool>(true, arg_3.x, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, arg_0), vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(true, arg_3.x, arg_3.x))), arg_3.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, -1822f)))));
    var var_1 = vec3<i32>(1i, ~(-6808i), _wgslsmith_add_i32(u_input.c.x, firstTrailingBit(-(2147483647i | u_input.c.x))));
    var_0 = Struct_2(var_0.b.xxw, vec4<bool>(true == !select(arg_0, true, arg_3.x), any(select(!vec4<bool>(true, var_0.b.x, false, true), var_0.b, var_0.a.x | arg_0)), arg_0 | arg_0, false), _wgslsmith_f_op_f32(-arg_1.x));
    let var_2 = ~(-_wgslsmith_clamp_i32(arg_2.b.x, u_input.b.x, 1i));
    var var_3 = 0u;
    return global0[_wgslsmith_index_u32(abs(u_input.d.x), 16u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_2(!vec3<bool>(any(vec4<bool>(false, true, true, true)), !all(vec2<bool>(true, false)), arg_1.c != _wgslsmith_add_i32(1i, arg_1.c)), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, !any(vec2<bool>(true, true)), true), 141f);
    global0 = array<Struct_1, 16>();
    global2 = var_0.c;
    let var_1 = !func_3(func_2(var_0.a.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))), arg_1, !(!var_0.a.zy)), Struct_2(vec3<bool>(any(var_0.a.yx), true, arg_1.a.x != 35223u), var_0.b, _wgslsmith_f_op_f32(ceil(-265f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, -1501f, var_0.c, -283f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-758f, 1940f, -679f, 630f), vec4<f32>(1000f, var_0.c, 476f, var_0.c))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1027f, 511f, 974f, -2079f), vec4<f32>(var_0.c, 673f, var_0.c, var_0.c)))));
    var_0 = Struct_2(!(!select(!vec3<bool>(var_1.x, var_0.b.x, false), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(var_1.x, true, false))), vec4<bool>(all(vec4<bool>(all(vec3<bool>(false, true, true)), arg_1.b.x <= arg_1.b.x, true, !var_0.b.x)), !any(var_1), all(select(!vec2<bool>(true, var_1.x), vec2<bool>(false, false), select(vec2<bool>(true, var_1.x), var_1.yx, vec2<bool>(false, var_1.x)))), true & any(vec2<bool>(var_1.x, var_1.x))), 1989f);
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(abs(var_0.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.c)), 327f, _wgslsmith_f_op_f32(var_0.c - 1000f), var_0.c)))), Struct_2(select(vec3<bool>(var_1.x, false, false), vec3<bool>(var_0.b.x & var_1.x, var_0.a.x, true), _wgslsmith_mult_u32(4294967295u, arg_0) <= firstTrailingBit(arg_0)), var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    return Struct_2(!(!vec3<bool>(true, func_3(Struct_1(vec4<u32>(49904u, u_input.d.x, 51369u, u_input.d.x), vec3<i32>(u_input.c.x, -8718i, u_input.c.x), u_input.c.x, u_input.d), arg_0.c, arg_0.b).x, true)), !vec4<bool>(arg_0.c.b.x, true, any(!vec4<bool>(arg_0.c.b.x, arg_0.c.b.x, true, arg_0.c.a.x)), arg_0.c.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(18377u, func_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 334f, 893f)) - vec3<f32>(1f, 1f, 1f)), global0[_wgslsmith_index_u32(~0u, 16u)], select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), func_1(Struct_3(-1219f, vec4<f32>(1000f, -1254f, -794f, -1351f), Struct_2(vec3<bool>(false, false, true), vec4<bool>(true, false, true, false), -1000f), 2067f))))));
    global1 = !(842f <= var_0.c);
    var var_1 = countOneBits(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * var_0.c) != var_0.c, vec3<f32>(1094f, 1151f, _wgslsmith_f_op_f32(floor(func_5(Struct_3(182f, vec4<f32>(var_0.c, 1460f, 760f, -242f), Struct_2(var_0.b.zyx, var_0.b, 1000f), var_0.c)).c))), global0[_wgslsmith_index_u32(u_input.a, 16u)], !func_4(u_input.d.x << (u_input.d.x % 32u), func_2(true, vec3<f32>(398f, -515f, var_0.c), Struct_1(u_input.d, vec3<i32>(2147483647i, 2147483647i, -2147483647i), 41115i, vec4<u32>(36533u, 4294967295u, u_input.d.x, u_input.d.x)), vec2<bool>(true, var_0.a.x))).c.a.xz).b);
    var_1 = vec3<i32>(var_1.x, _wgslsmith_div_i32(-_wgslsmith_mod_i32(~var_1.x, -2147483647i), -(~0i) << (0u % 32u)), ~(-countOneBits(-18319i)));
    global2 = _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2000f) + var_0.c) + 1709f));
    let var_2 = var_0.c;
    var_0 = func_4(~select(_wgslsmith_dot_vec3_u32(~vec3<u32>(49227u, 1u, 1u), ~vec3<u32>(u_input.a, u_input.a, 48809u)), ~u_input.a, func_3(global0[_wgslsmith_index_u32(0u, 16u)], func_5(Struct_3(var_0.c, vec4<f32>(-1879f, var_0.c, -105f, -486f), Struct_2(var_0.a, var_0.b, -914f), var_0.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1805f, -1355f, -1000f))).x), global0[_wgslsmith_index_u32(20091u, 16u)]).c;
    var var_3 = Struct_3(631f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), 879f, 616f, _wgslsmith_f_op_f32(-var_0.c)), func_4(4294967295u, global0[_wgslsmith_index_u32(1u, 16u)]).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -855f)) - _wgslsmith_f_op_f32(select(-174f, -583f, true))));
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.b - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-693f, var_0.c, 1517f, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, -1414f, -916f, var_0.c) + var_3.b)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1050f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -299f)), var_3.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c)) + var_3.b.x))), func_4(19555u, global0[_wgslsmith_index_u32(u_input.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 50572u), ~u_input.d.wz), 16u)]).b);
}

