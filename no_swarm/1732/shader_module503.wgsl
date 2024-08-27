struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30167u;

var<private> global1: vec2<u32>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = arg_0;
    let var_1 = arg_2.yyz;
    let var_2 = _wgslsmith_add_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(arg_2.xy, vec2<i32>(39769i, 27537i))), arg_2.yx) & ~arg_0.c;
    var var_3 = u_input.b;
    global0 = min(30276u >> (global1.x % 32u), abs(~min(max(61905u, 0u), ~u_input.e.x)));
    return 7179i;
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = vec2<i32>(arg_0.c.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, global1.x, global1.x, u_input.e.x) | vec4<u32>(u_input.e.x, u_input.b, 36423u, u_input.e.x), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, 5964u, global1.x), vec4<u32>(global1.x, 73863u, u_input.e.x, u_input.b))) % vec4<u32>(32u))));
    var var_1 = Struct_2(max(abs(u_input.e), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, firstLeadingBit(4294967295u), reverseBits(4294967295u)), ~(u_input.e >> (u_input.e % vec3<u32>(32u))))));
    global1 = ~(~(~(~var_1.a.xz)));
    let var_2 = false;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b, -602f, 798f, 1347f)))))));
    return arg_0.b;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_4(~reverseBits(-u_input.a.ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1402f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1095f))))), arg_0.yw);
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(21128u, countOneBits(_wgslsmith_sub_u32(arg_1.a.x, 0u))), 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b + -306f), _wgslsmith_f_op_f32(659f * var_0.b))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(219f, var_0.b))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -943f), _wgslsmith_f_op_f32(f32(-1f) * -261f)), var_0.b, var_0.b, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(1184f + var_0.b)))));
    let var_3 = Struct_1(~vec3<u32>(~_wgslsmith_mult_u32(0u, 8697u), u_input.b, arg_1.a.x), select(!vec2<bool>(all(vec2<bool>(true, arg_2)), arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)));
    var var_4 = var_3;
    return Struct_4(vec2<i32>(-var_0.c.x, var_0.c.x), 930f, var_0.a);
}

fn func_5(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(250f, -1796f, arg_1.x, arg_0.b), vec4<f32>(arg_0.b, arg_0.b, 205f, -414f))) + _wgslsmith_div_vec4_f32(vec4<f32>(-579f, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(-896f, arg_0.b, -1286f, arg_1.x)))))), ~(~(-u_input.d)), !(!select(!vec2<bool>(false, arg_2), select(vec2<bool>(false, arg_2), vec2<bool>(true, true), arg_2), vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(415f, 287f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + 674f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1156f * -1689f), _wgslsmith_f_op_f32(-arg_0.b)))))));
    global0 = global1.x;
    let var_1 = Struct_2(min(u_input.e, vec3<u32>(~arg_3, 4504u, 0u)));
    var var_2 = vec4<i32>(~1i, min(abs(~abs(-79951i)), _wgslsmith_mod_i32(arg_0.a.x ^ _wgslsmith_dot_vec3_i32(var_0.b.www, vec3<i32>(u_input.d.x, -2147483647i, 4884i)), -arg_0.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 1u, global1.x, global1.x), vec4<u32>(var_1.a.x, 0u, var_1.a.x, 1u)) % 32u))), 0i, 34182i);
    var var_3 = Struct_4(_wgslsmith_clamp_vec2_i32(~max(u_input.d.yw, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(-28285i, 2147483647i))), u_input.d.wz, -u_input.a.zw), var_0.a.x, vec2<i32>(arg_0.a.x, 1i));
    return Struct_1(vec3<u32>(var_1.a.x, 1u, global1.x), select(var_0.c, vec2<bool>(select(var_0.c.x, any(vec4<bool>(arg_2, arg_2, true, var_0.c.x)), var_0.c.x), _wgslsmith_clamp_u32(117241u, global1.x, 9016u) != _wgslsmith_mult_u32(3865u, 1u)), !(!vec2<bool>(var_0.c.x, true))));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = 46608u;
    var var_1 = 59743u;
    var var_2 = func_5(func_4(countOneBits(vec4<i32>(~2147483647i, u_input.c, func_2(Struct_4(arg_1.yw, 719f, u_input.d.zz), vec3<bool>(arg_0, false, false), u_input.a, 1i), u_input.d.x)), Struct_2(_wgslsmith_add_vec3_u32(reverseBits(u_input.e), vec3<u32>(u_input.e.x, u_input.e.x, 10351u) >> (arg_3.a % vec3<u32>(32u)))), !(_wgslsmith_f_op_f32(-213f * -1000f) >= _wgslsmith_f_op_f32(func_3(Struct_4(vec2<i32>(u_input.a.x, 2147483647i), -1122f, vec2<i32>(-1i, arg_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-1528f, -626f, 860f), vec3<f32>(-1211f, -1387f, -787f)))))), all(!select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(arg_0, arg_3.b.x, true, arg_0), vec4<bool>(true, arg_0, true, arg_0))) | arg_0, 4294967295u);
    var_2 = Struct_1(vec3<u32>(arg_3.a.x, 0u, arg_3.a.x), !vec2<bool>(any(!vec2<bool>(arg_3.b.x, false)), all(vec2<bool>(false, true)) & var_2.b.x));
    var_2 = func_5(func_4(~vec4<i32>(-arg_1.x, u_input.a.x & -14593i, arg_1.x, arg_1.x), Struct_2(vec3<u32>(var_2.a.x, var_2.a.x, u_input.e.x)), all(arg_3.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1012f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1089f, 975f, false)) - -1436f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(802f, 225f) - -2521f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(568f, 1884f, 692f), vec3<f32>(-507f, 476f, 1000f))))), !any(select(!vec4<bool>(var_2.b.x, var_2.b.x, false, arg_0), select(vec4<bool>(arg_3.b.x, false, false, arg_0), vec4<bool>(var_2.b.x, true, true, arg_0), vec4<bool>(var_2.b.x, true, arg_0, arg_3.b.x)), select(vec4<bool>(arg_3.b.x, arg_0, false, var_2.b.x), vec4<bool>(true, var_2.b.x, var_2.b.x, arg_0), arg_0))), 29080u);
    return select(!select(vec4<bool>(true, true, 0i >= u_input.c, var_2.b.x & arg_3.b.x), vec4<bool>(var_2.b.x, !var_2.b.x, true, true), !vec4<bool>(true, arg_3.b.x, true, arg_3.b.x)), !(!(!select(vec4<bool>(false, arg_3.b.x, false, var_2.b.x), vec4<bool>(arg_3.b.x, false, var_2.b.x, arg_0), false))), select(select(select(select(vec4<bool>(var_2.b.x, false, arg_0, arg_0), vec4<bool>(false, true, arg_3.b.x, var_2.b.x), vec4<bool>(var_2.b.x, arg_3.b.x, true, true)), vec4<bool>(false, false, arg_0, arg_3.b.x), select(vec4<bool>(arg_0, true, arg_0, var_2.b.x), vec4<bool>(arg_0, true, arg_3.b.x, false), vec4<bool>(false, var_2.b.x, true, true))), !select(vec4<bool>(arg_3.b.x, true, false, arg_0), vec4<bool>(arg_3.b.x, arg_3.b.x, true, false), false), select(vec4<bool>(arg_3.b.x, true, true, arg_0), vec4<bool>(true, arg_0, true, true), vec4<bool>(true, arg_0, true, var_2.b.x))), select(select(select(vec4<bool>(true, true, arg_3.b.x, var_2.b.x), vec4<bool>(true, var_2.b.x, var_2.b.x, false), vec4<bool>(true, arg_3.b.x, true, var_2.b.x)), vec4<bool>(arg_3.b.x, false, var_2.b.x, arg_0), false), vec4<bool>(arg_0, !var_2.b.x, select(false, arg_3.b.x, true), true), !arg_3.b.x | arg_3.b.x), true));
}

fn func_6(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: vec4<bool>) -> Struct_1 {
    return func_5(Struct_4(abs(u_input.a.wz), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -242f)))), select(u_input.d.xz, -(~u_input.d.xw), arg_3.zw)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1910f, -1039f, 1347f)), vec3<f32>(_wgslsmith_f_op_f32(1481f * -530f), _wgslsmith_f_op_f32(floor(-152f)), _wgslsmith_f_op_f32(522f * 1000f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1912f, 269f) - _wgslsmith_f_op_f32(max(-547f, -1856f))), _wgslsmith_f_op_f32(func_4(u_input.a, Struct_2(u_input.e), arg_3.x).b - -548f), _wgslsmith_f_op_f32(max(-449f, _wgslsmith_f_op_f32(1381f - -665f))))), arg_3.x, _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(firstLeadingBit(1u), u_input.b, global1.x << (global1.x % 32u))), ~reverseBits(arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(u_input.e.x, false, 32776i, !select(vec4<bool>(all(vec3<bool>(false, true, false)), true, true, true), vec4<bool>(true, true, true, false), func_1(true, min(vec4<i32>(39220i, 0i, u_input.c, -14828i), vec4<i32>(12671i, u_input.c, -6252i, -2147483647i)), _wgslsmith_mod_u32(global1.x, 1u), Struct_1(vec3<u32>(global1.x, u_input.b, u_input.e.x), vec2<bool>(false, true)))));
    let var_1 = func_4(~u_input.d, Struct_2(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1337u, u_input.b, 0u)), ~(~u_input.e))), any(vec2<bool>(select(u_input.c, u_input.d.x, false) >= 19221i, false & (var_0.b.x & false))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, 628f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, 1018f, var_1.b, -2317f))))), u_input.d, select(!(!vec2<bool>(var_0.b.x, true)), func_6(_wgslsmith_dot_vec2_u32(u_input.e.yz, abs(u_input.e.yz)), !(var_0.b.x || var_0.b.x), func_4(u_input.a & vec4<i32>(1i, -1i, u_input.d.x, 1i), Struct_2(u_input.e), true).c.x, select(vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.b.x), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(true, false, var_0.b.x, var_0.b.x)), !vec4<bool>(false, true, var_0.b.x, false))).b, var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(112f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, var_1.b) - _wgslsmith_f_op_f32(step(-1066f, -1000f))))));
    var_2 = Struct_3(var_2.a, vec4<i32>(-_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, var_2.b.x), -21823i), 0i, var_1.a.x, 0i), vec2<bool>(var_2.c.x, any(select(!var_0.b, func_5(var_1, vec3<f32>(var_2.d, 1098f, -666f), false, 1u).b, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_4(u_input.a, Struct_2(var_0.a), var_0.b.x)))))));
    var var_3 = firstTrailingBit(var_0.a.x) >= _wgslsmith_mult_u32(global1.x, ~select(~4294967295u, 1u, all(vec3<bool>(var_0.b.x, var_2.c.x, var_0.b.x))));
    let var_4 = func_4(u_input.a, Struct_2(countOneBits(var_0.a)), var_2.b.x < func_2(Struct_4(~var_1.c, 1032f, vec2<i32>(u_input.a.x, var_1.c.x)), !func_1(var_2.c.x, vec4<i32>(var_2.b.x, -22507i, var_2.b.x, -1i), 1u, Struct_1(u_input.e, vec2<bool>(true, var_2.c.x))).xwx, vec4<i32>(var_2.b.x, u_input.d.x, -83627i << (global1.x % 32u), 27738i), ~(-var_1.c.x)));
    let var_5 = select(func_5(Struct_4(firstTrailingBit(firstTrailingBit(u_input.d.ww)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b, var_1.b)), 2136f), -var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.a.yyx))), var_2.c.x, 18381u).b, var_2.c, var_0.b);
    var var_6 = !func_5(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.zxy - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-357f, var_1.b, 1635f))))), all(!vec4<bool>(true, var_0.b.x, var_0.b.x, false)) & !func_6(var_0.a.x, var_5.x, 48004i, vec4<bool>(var_5.x, false, true, true)).b.x, global1.x).b.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_0.a));
}

