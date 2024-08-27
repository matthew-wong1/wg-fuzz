struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: bool) -> f32 {
    var var_0 = Struct_1(arg_0.x, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, _wgslsmith_div_u32(~28177u, 4294967295u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(886f, arg_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))), arg_0.x));
    let var_2 = (~u_input.a.x < u_input.a.x) && !any(select(vec4<bool>(false, true, arg_1, false), select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, arg_2, arg_2), true), arg_1));
    let var_3 = _wgslsmith_sub_vec3_u32(max(~u_input.d.zxw ^ u_input.b, ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, u_input.b.x, 44447u), u_input.b)) & ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12268u, 1u, 1u), vec4<u32>(41u, 1u, var_0.b, u_input.d.x)), 115752u, 4294967295u >> (0u % 32u)), ~abs(firstTrailingBit(vec3<u32>(21379u, var_0.b, 1u))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(825f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + 2052f)))))), u_input.d.x & (~firstTrailingBit(var_3.x) ^ u_input.a.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_0.a))));
}

fn func_2() -> bool {
    global0 = true;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1676f), _wgslsmith_f_op_f32(2518f * -871f), _wgslsmith_f_op_f32(max(-791f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-649f, -631f, -1005f), vec3<f32>(1876f, 416f, -1000f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-105f, 191f, -430f))))), !(true | all(vec3<bool>(false, true, false))), true)), 0u);
    var var_1 = 1u;
    let var_2 = Struct_1(-1000f, ~(~var_0.b));
    let var_3 = var_2;
    return any(vec2<bool>(true, true));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = !(all(select(select(arg_1, arg_1, arg_1.x), arg_1, select(arg_1, vec4<bool>(true, true, false, false), arg_1.x))) && all(vec3<bool>(false, arg_1.x, arg_1.x | false)));
    var var_1 = arg_0.x;
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.c.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.e) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(~u_input.e, 2147483647i))), -select(u_input.c.x, select(0i, u_input.c.x, all(arg_1.wxz)), true), u_input.c.x, _wgslsmith_add_i32(1i << ((u_input.b.x << (u_input.d.x % 32u)) % 32u), -(~u_input.e)) << (min(3508u, ~abs(u_input.b.x)) % 32u));
    var var_3 = Struct_1(arg_0.x, u_input.d.x);
    let var_4 = Struct_1(var_3.a, _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_sub_u32(4294967295u, ~var_3.b)), 0u));
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-280f, var_4.a)), 459f), var_4.b);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, -193f, arg_0.a))) - vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a)), _wgslsmith_f_op_f32(-1818f * -956f), arg_0.a)))), select(vec4<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true)), u_input.c.x >= min(5104i, arg_1), false, false), !vec4<bool>(select(true, false, true), true, true, true), (_wgslsmith_add_u32(4294967295u, u_input.a.x) != ~3574u) && all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    var_0 = Struct_1(arg_0.a, ~u_input.d.x);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-495f, -654f, var_0.a), vec3<f32>(-183f, arg_0.a, -1113f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, var_0.a, arg_0.a)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1048f, 1412f, var_0.a) * vec3<f32>(1240f, arg_0.a, arg_0.a)), vec3<f32>(-205f, arg_0.a, 950f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(227f, arg_0.a, 2237f)))))), select(vec4<bool>(true, !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0.a) == _wgslsmith_f_op_f32(arg_0.a * -372f), true & any(vec3<bool>(true, false, false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), false)));
    var var_2 = func_4(vec3<f32>(func_4(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(564f, 167f, var_0.a) * vec3<f32>(-1915f, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, arg_0.a, 1190f) - vec3<f32>(var_1.a, var_1.a, 1053f)))), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, false, true)).a, 494f, _wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(-var_0.a))), select(vec4<bool>(true, any(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, false)), false), vec4<bool>(true, !(arg_0.a <= var_1.a), true, true), any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    var var_3 = Struct_1(465f, ~32512u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, _wgslsmith_f_op_f32(-var_2.a), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f + var_2.a) - _wgslsmith_f_op_f32(-arg_0.a)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1729f, _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(f32(-1f) * -184f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.a), -767f)), var_3.a)));
}

fn func_6(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(arg_0.zxw + arg_0.zzx), vec4<bool>(false, true, false, false)).a * arg_3.a), 465f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -105f), -628f, all(vec3<bool>(false, false, true)))))));
    global0 = false;
    global0 = true;
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(arg_2.a, u_input.a.x), arg_1 | -19235i)).x, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(func_3(arg_0.wyx, false, true))), arg_2.a)), !(!(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false)))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(var_1, u_input.c.x)).x, arg_2.b);
    return Struct_1(_wgslsmith_f_op_f32(-arg_3.a), 0u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = 38082u | _wgslsmith_mod_u32(~u_input.d.x >> (4294967295u % 32u), min(27722u, ~max(3251u, u_input.d.x)));
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, -2213f, arg_0) + vec3<f32>(-332f, arg_0, arg_0)), vec3<f32>(276f, -1728f, 570f))), vec4<bool>(all(vec2<bool>(true, false)), all(vec3<bool>(false, true, false)), func_2(), all(vec4<bool>(true, true, false, false)))), 0i)), abs(u_input.e), Struct_1(_wgslsmith_f_op_vec4_f32(func_5(Struct_1(1000f, ~u_input.d.x), -_wgslsmith_div_i32(u_input.e, u_input.e))).x, u_input.d.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<f32>(arg_0, arg_0, arg_0), vec4<bool>(false, true, true, true)).a - _wgslsmith_f_op_f32(trunc(arg_0)))), ~1u ^ _wgslsmith_mult_u32(func_4(vec3<f32>(-296f, arg_0, arg_0), vec4<bool>(true, false, true, true)).b, u_input.d.x)));
    var_1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(func_3(vec3<f32>(670f, 374f, var_1.a), false, true)))), -927f)), !vec4<bool>(true, false, true, u_input.e < u_input.c.x));
    var var_2 = func_4(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1986f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(max(var_1.a, _wgslsmith_f_op_f32(var_1.a * arg_0))), false)), -1597f), select(vec4<bool>(true, true, 105775u <= func_4(vec3<f32>(-735f, 390f, var_1.a), vec4<bool>(true, false, false, true)).b, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), func_2())), arg_0 == var_1.a));
    let var_3 = false;
    return Struct_1(200f, _wgslsmith_add_u32(4294967295u, func_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, arg_0, var_1.a))), !vec4<bool>(var_3, var_3, false, var_3)).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -423f), u_input.b.x);
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1317f, -522f)))));
    global0 = (-2147483647i != u_input.e) & true;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(var_0.a + 159f))));
    let var_3 = u_input.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1318f)), _wgslsmith_f_op_f32(var_0.a + var_1.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(463f, -1095f) * _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a + var_0.a)))))));
    var var_5 = 0i ^ firstLeadingBit(min(firstLeadingBit(_wgslsmith_sub_i32(-27570i, u_input.e)), var_3.x));
    var var_6 = func_4(_wgslsmith_f_op_vec3_f32(-var_4.xwx), vec4<bool>(any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), false | (var_0.b == ~80667u), true));
    let x = u_input.a;
    s_output = StorageBuffer(-907f, ~vec2<u32>(u_input.d.x, ~var_0.b >> (u_input.b.x % 32u)), _wgslsmith_f_op_f32(min(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_6.a))) + var_6.a))), -121f, vec2<u32>(_wgslsmith_add_u32(0u, 16406u), 23498u));
}

