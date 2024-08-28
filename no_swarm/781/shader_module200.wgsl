struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_4(Struct_2(Struct_1(-u_input.b.x, true), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(595f, 194f) * vec2<f32>(-1000f, 648f)))), vec2<f32>(_wgslsmith_f_op_f32(-1147f - -637f), 218f))), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(-11458i, true)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1554f)))), -346f, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1211f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-234f, -625f))))));
    let var_1 = ~var_0.a.c.wx;
    let var_2 = false;
    let var_3 = _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(u_input.a.zw, -u_input.b) ^ vec2<i32>(u_input.b.x, -1i), min(~u_input.a.yz, select(u_input.b, ~u_input.a.xw, all(vec3<bool>(false, var_2, true)))));
    let var_4 = select(vec3<bool>(!(var_3.x >= u_input.b.x), var_0.a.a.b, (i32(-1i) * -46141i) > ((u_input.a.x >> (var_1.x % 32u)) ^ ~var_0.a.a.a)), !vec3<bool>(!var_0.a.a.b, var_0.a.a.b, !(!var_0.a.d.b)), select(select(select(!vec3<bool>(false, var_0.a.a.b, false), vec3<bool>(var_0.a.a.b, var_2, true), select(vec3<bool>(true, true, var_0.a.d.b), vec3<bool>(true, var_2, var_0.a.a.b), vec3<bool>(true, true, true))), !select(vec3<bool>(var_0.a.a.b, false, var_0.a.a.b), vec3<bool>(var_0.a.a.b, var_2, var_2), vec3<bool>(false, true, var_2)), vec3<bool>(all(vec4<bool>(true, false, var_2, var_2)), any(vec4<bool>(true, var_0.a.d.b, true, true)), false)), !select(select(vec3<bool>(true, true, var_2), vec3<bool>(false, var_2, true), var_0.a.a.b), vec3<bool>(true, true, true), !vec3<bool>(var_2, true, var_0.a.d.b)), false));
    return _wgslsmith_f_op_f32(-var_0.a.b.x);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: f32) -> i32 {
    return _wgslsmith_mult_i32(-30652i, _wgslsmith_div_i32(_wgslsmith_sub_i32(max(u_input.a.x, arg_1.a), 24133i << (0u % 32u)), firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.wxz, vec3<i32>(u_input.a.x, u_input.b.x, 0i))))) << (~abs(85766u) % 32u);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = u_input.a;
    let var_1 = ~27515u;
    var var_2 = Struct_1(_wgslsmith_mult_i32(func_4(true, Struct_1(-45741i, true), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-327f * 533f)), _wgslsmith_f_op_f32(step(-506f, _wgslsmith_f_op_f32(func_3())))), 2147483647i), true);
    let var_3 = Struct_2(Struct_1(_wgslsmith_add_i32(u_input.a.x, select(var_2.a, -var_0.x, !var_2.b)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(844f, 1451f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-717f, 299f), vec2<f32>(-1647f, -838f), arg_0.yy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(984f, 141f) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 2518f), vec2<f32>(1205f, -1000f))), arg_0.xy))), _wgslsmith_div_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 68300u, 4294967295u), vec4<u32>(0u, var_1, 4294967295u, 0u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1, var_1, 0u, 40319u), vec4<u32>(4294967295u, var_1, 71380u, var_1)) & _wgslsmith_add_vec4_u32(~vec4<u32>(54359u, 4294967295u, var_1, var_1), vec4<u32>(15649u, var_1, 4294967295u, var_1) & vec4<u32>(var_1, 56396u, var_1, var_1))), Struct_1(2147483647i, var_2.b && true));
    var_0 = vec4<i32>(1i, reverseBits(8117i) | _wgslsmith_mod_i32(i32(-1i) * -1i, abs(var_0.x) >> (max(var_1, var_1) % 32u)), u_input.a.x, 1i);
    return firstTrailingBit(_wgslsmith_mult_u32(4294967295u, min(var_1, 100490u)));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, _wgslsmith_f_op_f32(max(-1040f, -2370f)), _wgslsmith_f_op_f32(floor(512f)), _wgslsmith_f_op_f32(ceil(1626f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, _wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(-802f - -471f), _wgslsmith_f_op_f32(f32(-1f) * -635f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, _wgslsmith_f_op_f32(var_0.x * 822f), var_0.x, 791f)))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-1210f)), 1613f, var_0.x, 1861f));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))) * vec3<f32>(_wgslsmith_f_op_f32(919f * var_0.x), var_0.x, 419f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(141f, var_0.x, _wgslsmith_f_op_f32(374f + 507f)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(step(592f, var_0.x)), _wgslsmith_f_op_f32(-334f + -158f)), _wgslsmith_mult_u32(0u, 1u) <= func_2(vec3<bool>(true, false, true)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -402f, var_0.x) + var_0.yww)), var_0.wzy))));
    var var_2 = Struct_2(Struct_1(0i, true), _wgslsmith_f_op_vec2_f32(-var_1.zy), vec4<u32>(1u, 1u, 1u, 1u), Struct_1(~2147483647i, false));
    var var_3 = -(~(1i & _wgslsmith_mult_i32(var_2.d.a, min(-64776i, 1i))));
    return var_2.a;
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0 << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1 & arg_1, 4294967295u, arg_1, reverseBits(arg_1)), ~max(vec4<u32>(arg_1, arg_1, arg_1, 52519u), vec4<u32>(0u, 44840u, arg_1, arg_1))) % 32u), arg_2.b);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(~1u, abs(1u)), 0u, ~1u);
    var var_1 = func_5(_wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(u_input.b, ~u_input.b), ~2147483647i), var_0.x, func_1());
    var var_2 = vec4<f32>(872f, _wgslsmith_f_op_f32(abs(1832f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1865f)) * _wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(sign(-407f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(348f)) + -1570f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(764f, -855f)) - 429f), func_1().b)));
    var var_3 = Struct_4(Struct_2(Struct_1(u_input.a.x, any(select(vec4<bool>(true, true, var_1.b, false), vec4<bool>(var_1.b, false, var_1.b, true), vec4<bool>(var_1.b, var_1.b, true, var_1.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1083f, var_2.x), var_2.yx)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.yx + vec2<f32>(var_2.x, var_2.x))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(87987u, var_0.x, 6773u)), _wgslsmith_div_u32(var_0.x, var_0.x), ~var_0.x, 7417u), Struct_1(abs(-2147483647i), !var_1.b)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(685f, _wgslsmith_f_op_f32(select(2126f, 719f, true)), _wgslsmith_f_op_f32(-var_2.x), var_2.x) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -1464f, -1048f, 557f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 1000f, 836f, 868f))))))));
    var var_4 = var_3.a;
    var var_5 = Struct_3(-u_input.a.zzz, !(!select(select(vec3<bool>(var_3.a.d.b, false, false), vec3<bool>(var_3.a.d.b, var_1.b, var_4.d.b), var_4.d.b), vec3<bool>(var_3.a.a.b, true, false), select(vec3<bool>(var_4.d.b, var_4.a.b, var_3.a.a.b), vec3<bool>(var_3.a.a.b, true, true), vec3<bool>(var_4.d.b, var_1.b, false)))));
    let var_6 = Struct_4(Struct_2(Struct_1(min(var_5.a.x, var_3.a.d.a), any(!var_5.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-500f, -340f) - vec2<f32>(-185f, var_2.x)) - vec2<f32>(var_3.a.b.x, var_4.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b.x, -813f))), abs(var_3.a.c), var_4.a), var_3.b);
    var_5 = Struct_3(var_5.a, select(var_5.b, !select(var_5.b, vec3<bool>(var_1.b, var_6.a.d.b, true), !var_5.b), var_5.b));
    var var_7 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.c.x ^ var_6.a.c.x, vec3<f32>(1f, var_4.b.x, -831f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_6.b.wx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(557f, var_2.x)) + _wgslsmith_f_op_vec2_f32(var_2.xx + vec2<f32>(var_7.b.x, var_3.b.x)))))), _wgslsmith_f_op_vec4_f32(var_6.b + var_3.b));
}

