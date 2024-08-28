struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(!vec2<bool>(all(vec2<bool>(true, false)), true), u_input.b, vec4<bool>(true, !any(vec2<bool>(false, true)) && (u_input.a.x < _wgslsmith_mod_u32(18135u, 1u)), select((u_input.c < u_input.c) && true, true, true), !(!any(vec3<bool>(true, false, false)))), true);
    var var_1 = ~(~var_0.b);
    let var_2 = Struct_1(~max(~1u, ~(u_input.b << (28765u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(129f, -534f, -1106f, -656f), vec4<f32>(-1070f, 412f, -1162f, -1340f), var_0.c)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(980f, 935f, 229f, -550f) - vec4<f32>(-1226f, -360f, -865f, 110f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-757f, -1000f, -137f, -301f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(387f, -310f, -610f, -153f)) * vec4<f32>(750f, 441f, 490f, 1561f)))), select(vec2<bool>((1u ^ var_0.b) == _wgslsmith_mult_u32(26588u, var_0.b), _wgslsmith_add_i32(0i, u_input.c) <= u_input.d.x), select(select(vec2<bool>(false, var_0.c.x), select(vec2<bool>(false, var_0.a.x), vec2<bool>(false, var_0.a.x), var_0.c.wz), !vec2<bool>(true, var_0.a.x)), select(select(vec2<bool>(true, var_0.c.x), vec2<bool>(false, true), vec2<bool>(var_0.d, var_0.d)), select(var_0.a, vec2<bool>(false, false), var_0.a), vec2<bool>(var_0.a.x, var_0.d)), select(vec2<bool>(var_0.a.x, false), vec2<bool>(var_0.a.x, var_0.a.x), var_0.a)), !(!select(false, false, true))), 20458u);
    var var_3 = 29050i;
    let var_4 = vec2<bool>(all(var_0.c.xzy), false);
    return vec2<bool>(true, var_0.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_2(arg_2.d.xy, ~(~(arg_2.a.d << (arg_2.a.d % 32u))), vec4<bool>(false, !arg_0.c.x || !arg_1.d, false, true), arg_1.d | any(select(!arg_1.c, vec4<bool>(true, arg_1.c.x, true, false), !vec4<bool>(arg_0.c.x, arg_1.d, true, arg_2.e))));
    let var_1 = Struct_1(firstLeadingBit(u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(arg_2.a.b, _wgslsmith_f_op_vec4_f32(abs(arg_0.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(arg_2.a.b, arg_0.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1074f, 1244f, 2636f, 233f) * arg_2.a.b)))) * arg_0.b), arg_1.c.zw, arg_2.a.a);
    global0 = var_0.d;
    let var_2 = vec4<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(~(-_wgslsmith_div_vec3_i32(vec3<i32>(33714i, 0i, u_input.d.x), vec3<i32>(33391i, u_input.d.x, -2147483647i))), vec3<i32>(_wgslsmith_mult_i32(~u_input.c, -u_input.d.x), select(u_input.d.x & -2147483647i, u_input.c, true), ~_wgslsmith_add_i32(-4253i, 0i))), _wgslsmith_add_i32(u_input.c, i32(-1i) * -(~u_input.c)), reverseBits(1i));
    let var_3 = Struct_1(37813u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, -353f, var_1.b.x, 613f)) + _wgslsmith_f_op_vec4_f32(abs(var_1.b))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1581f, arg_0.b.x, -133f, arg_2.c))), var_1.b)), var_1.b)), vec2<bool>(any(var_1.c), arg_2.e), _wgslsmith_mult_u32(0u, arg_0.d));
    return var_1.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_div_u32(~((u_input.a.x >> (1u % 32u)) & 0u), u_input.b);
    var_0 = func_4(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a.x, u_input.a.x))), ~(~vec2<u32>(u_input.a.x, 71610u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(226f, -228f, 2210f, 898f))) + vec4<f32>(118f, -2170f, 1346f, 419f)), vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, -1109f)), -217f, 1190f, _wgslsmith_f_op_f32(342f + -553f)))), vec2<bool>(true, true), ~32667u), Struct_2(!(!func_3()), 0u, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), func_3().x), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), func_3().x), Struct_3(Struct_1(~(~4294967295u), vec4<f32>(-415f, _wgslsmith_f_op_f32(-1127f * 178f), -893f, -661f), func_3(), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, 59715u), 74767u)), -147f, 592f, select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), false), !(all(vec3<bool>(true, false, true)) || true)));
    var var_1 = Struct_2(select(func_3(), vec2<bool>(true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), any(vec3<bool>(true, true, true))), reverseBits(_wgslsmith_mod_u32(~0u, 27617u)), vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true))), any(vec4<bool>(true, true, true, true)), select(true, true, false), !all(vec2<bool>(true, true)) || ((2147483647i <= u_input.c) == true)), true);
    var_0 = 46438u;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1415f, 429f))))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1310f, 1000f), 1790f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(340f)), _wgslsmith_f_op_f32(f32(-1f) * -461f))))));
    return abs((u_input.c | (u_input.c & ~33229i)) >> (88594u % 32u));
}

fn func_1() -> f32 {
    let var_0 = -1546f;
    global0 = true;
    var var_1 = vec3<i32>(min(-1i, func_2()), u_input.c, min(u_input.c, abs(1i)) >> (~(~(~u_input.b)) % 32u));
    let var_2 = vec2<f32>(763f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -797f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))))));
    return _wgslsmith_f_op_f32(-var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !all(vec2<bool>(true, true));
    global0 = true;
    let var_0 = Struct_3(Struct_1(_wgslsmith_mod_u32(1u, max(~u_input.a.x, firstLeadingBit(u_input.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, -1882f, -388f, -1858f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1171f, -738f, 409f, -297f), vec4<f32>(779f, 769f, 1000f, -642f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -248f, 650f, 186f) - vec4<f32>(-1000f, -1191f, 1849f, 698f)))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), countOneBits(abs(92821u >> (u_input.a.x % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1846f))) + _wgslsmith_div_f32(1101f, _wgslsmith_f_op_f32(func_1()))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-666f + -1394f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))))), !vec3<bool>(select(true, false, false), false, true), true);
    var var_1 = Struct_2(var_0.a.c, var_0.a.d, vec4<bool>(var_0.e, false && select(true, true, var_0.d.x && false), var_0.d.x && var_0.d.x, !(!(true & var_0.e))), false);
    var var_2 = vec4<i32>(-1i) * -abs(select(abs(vec4<i32>(0i, u_input.c, 0i, u_input.d.x)), ~vec4<i32>(-8709i, u_input.d.x, -1i, 14433i), any(vec2<bool>(true, var_1.c.x))));
    var var_3 = var_2.x;
    var var_4 = Struct_2(vec2<bool>(var_1.b < u_input.a.x, all(var_1.c)), firstLeadingBit(select(firstTrailingBit(~var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(25251u, 918u, var_1.b, 1u), vec4<u32>(1u, 1u, 0u, var_0.a.d) & vec4<u32>(5075u, var_1.b, 58346u, 57143u)), any(select(var_1.c, var_1.c, true)))), var_1.c, var_1.c.x);
    let var_5 = !(!select(var_1.a, var_1.c.zy, !func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.a.b.yzw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(687f, var_0.b, -1480f) * var_0.a.b.zyx))))), i32(-1i) * -firstTrailingBit(-var_2.x), abs(_wgslsmith_dot_vec2_i32(~firstLeadingBit(u_input.d), -u_input.d)), var_0.a.b.x, u_input.d.x);
}

