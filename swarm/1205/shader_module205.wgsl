struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_3,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(638f))), _wgslsmith_f_op_f32(round(-377f)))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, u_input.b)), vec2<u32>(_wgslsmith_mult_u32(u_input.b, 17544u), abs(1u))), firstLeadingBit(arg_0)), vec2<f32>(-1093f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -924f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-612f, 961f, -1321f)))))), vec4<bool>(true, true, true, true));
    var var_1 = Struct_4(arg_1, u_input.a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1552f) + _wgslsmith_f_op_f32(round(var_0.a.x))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.d.x, var_0.c.x)))), Struct_2(var_0, select(select(vec2<bool>(var_0.e.x, true), vec2<bool>(true, var_0.e.x), var_0.e.x), select(vec2<bool>(true, var_0.e.x), var_0.e.xy, var_0.e.x), !var_0.e.x), select(vec4<bool>(true, var_0.e.x, var_0.e.x, var_0.e.x), !vec4<bool>(var_0.e.x, false, var_0.e.x, false), select(true, false, var_0.e.x)), var_0), var_0.b), Struct_1(vec3<f32>(-1168f, -815f, -1000f), _wgslsmith_clamp_u32(1u, 0u, ~42134u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1677f, -1000f))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, var_0.c.x), vec2<f32>(-1139f, var_0.c.x))))), vec3<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(trunc(2009f))), vec4<bool>(!var_0.e.x, all(var_0.e.wyz), var_0.e.x, var_0.e.x)), var_0);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(725f, var_1.d.d.x)))) - var_1.d.c.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(var_1.d.a - var_0.d);
    var_2 = 1000f;
    return false;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_mult_vec3_i32(~u_input.a, u_input.a);
    let var_1 = Struct_4(-65634i, u_input.a, Struct_3(any(vec4<bool>(all(vec3<bool>(true, true, false)), func_3(31521u, u_input.a.x), true, false)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1302f, -998f, 147f))), u_input.b | u_input.b, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(100f, -574f), vec2<f32>(970f, 777f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-312f, 530f, 1461f)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), u_input.b < u_input.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false), true), Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1096f, 1520f, 2130f))), ~39066u, vec2<f32>(-938f, -2074f), vec3<f32>(-393f, 1767f, -926f), vec4<bool>(true, false, false, false))), u_input.b), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, 403f, 197f) - vec3<f32>(-1191f, -1243f, 1344f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(763f, -1735f, -145f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1771f, 1517f, 1000f) + vec3<f32>(-308f, -334f, 983f))))), _wgslsmith_clamp_u32(u_input.b, 1u, ~(~0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(821f, 1000f), vec2<f32>(1553f, 1180f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1151f, 2181f), _wgslsmith_div_f32(458f, -1143f), _wgslsmith_f_op_f32(round(-457f))) * vec3<f32>(201f, _wgslsmith_f_op_f32(-969f - 1068f), _wgslsmith_f_op_f32(floor(-178f)))), vec4<bool>(true, all(vec3<bool>(true, true, true)), true, true)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-676f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(192f, 808f) - _wgslsmith_f_op_f32(f32(-1f) * -1437f)), -198f), _wgslsmith_clamp_u32(0u, u_input.b, 1u & max(19505u, u_input.b)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-484f, _wgslsmith_f_op_f32(1137f * -956f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-206f, -1000f, -305f)) + vec3<f32>(-545f, -416f, -1313f))), vec4<bool>(func_3(u_input.b, select(u_input.a.x, var_0.x, false)), any(vec2<bool>(false, false)) || true, !(u_input.b >= 23745u), select(18524i, 1i, true) != 28659i)));
    let var_2 = true;
    let var_3 = var_1.c;
    var var_4 = var_1.e;
    return Struct_4(-7482i, u_input.a, Struct_3(var_1.e.d.x <= _wgslsmith_f_op_f32(-1307f * _wgslsmith_f_op_f32(-var_4.d.x)), var_3.b, ~_wgslsmith_sub_u32(~1u, _wgslsmith_add_u32(var_3.b.a.b, u_input.b))), var_1.e, Struct_1(vec3<f32>(-426f, var_4.a.x, var_4.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.c, u_input.b, 42673u, var_3.c), vec4<u32>(28798u, var_1.e.b, 0u, var_1.e.b), vec4<u32>(var_4.b, 4294967295u, 1u, 1u)), vec4<u32>(var_3.c, 4294967295u, u_input.b, var_1.d.b)) & 1u, vec2<f32>(_wgslsmith_f_op_f32(-1797f + -1908f), -1376f), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.b.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -945f), 1f) + vec3<f32>(-2833f, var_1.c.b.a.d.x, var_1.d.c.x)), select(vec4<bool>(true, any(vec3<bool>(var_3.a, false, var_1.c.b.a.e.x)), false, true | var_2), select(!vec4<bool>(true, true, false, var_1.c.a), var_1.d.e, var_2), var_2)));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    var var_1 = !func_2().d.e.x;
    var_1 = _wgslsmith_mod_u32(~(~11073u), 28580u) > u_input.b;
    let var_2 = vec4<i32>(_wgslsmith_clamp_i32(var_0.a, u_input.a.x, 2147483647i), ~(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), 11670i)), u_input.a.x, ~26074i);
    let var_3 = !(1u > ~(4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d.b, 0u, 1u), vec3<u32>(91043u, 4294967295u, 4294967295u))));
    return Struct_2(var_0.e, vec2<bool>(true, !(!(var_0.e.b <= u_input.b))), select(vec4<bool>(!func_2().d.e.x, select(47264u, var_0.e.b, var_3) >= 1u, !(!var_3), !any(vec4<bool>(var_3, true, var_0.e.e.x, true))), var_0.e.e, var_0.e.e.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c.b.a.c.x)), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, 23588u)), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.b, var_0.e.b, u_input.b), vec3<u32>(var_0.e.b, 0u, var_0.c.c), vec3<bool>(var_3, var_0.e.e.x, var_3)), ~vec3<u32>(u_input.b, var_0.c.b.d.b, 4294967295u))), _wgslsmith_f_op_vec2_f32(-var_0.c.b.d.d.xz), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.e.a, var_0.c.b.a.a)), vec3<f32>(var_0.c.b.a.d.x, var_0.e.d.x, -875f)))), var_0.e.e));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<f32> {
    let var_0 = any(func_2().e.e);
    let var_1 = vec4<i32>(-u_input.a.x, u_input.a.x, ~max(max(-u_input.a.x, u_input.a.x), ~(0i & u_input.a.x)), 59811i);
    let var_2 = true;
    let var_3 = true;
    let var_4 = func_2();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 826f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, arg_2.x))), arg_0.d.d.xx)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))))), 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(), any(vec2<bool>(false, false)) && true, vec4<f32>(_wgslsmith_f_op_f32(456f - 222f), -596f, 1f, 942f), !func_2().d.e.xwx)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(vec3<f32>(615f, 198f, 173f), u_input.b, vec2<f32>(1855f, 418f), vec3<f32>(443f, -1137f, 482f), vec4<bool>(true, false, true, true)), vec2<bool>(true, true), vec4<bool>(false, true, true, true), Struct_1(vec3<f32>(928f, 1000f, -910f), u_input.b, vec2<f32>(395f, 165f), vec3<f32>(1092f, 1923f, 372f), vec4<bool>(true, true, false, false))), true, vec4<f32>(-744f, 951f, 156f, -1039f), vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(642f, -1840f) + vec2<f32>(-1563f, 1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(409f, 577f) * vec2<f32>(-571f, 432f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1547f, 844f, -861f)))), !any(vec2<bool>(true, true)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(166f, 1000f, -524f)) * func_2().d.d)))), !(!(!func_2().c.b.d.e)));
    let var_1 = func_2();
    var var_2 = var_0;
    var_2 = func_2().d;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), 0i, _wgslsmith_clamp_i32(var_1.b.x, -1i, var_1.b.x), u_input.a.x), vec4<i32>(1i, 1i, u_input.a.x, u_input.a.x ^ -1i)));
}

