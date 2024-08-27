struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = Struct_4(false);
    let var_1 = Struct_2(arg_2.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.a.b, 1100f, -1680f), arg_2.a.a, vec3<bool>(var_0.a, true, true))) * vec3<f32>(-111f, arg_2.c, arg_2.a.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.a.a - arg_2.a.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-311f, -2028f, _wgslsmith_f_op_f32(-953f * -732f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.a.a))), !var_0.a)));
    let var_2 = var_1.a;
    let var_3 = Struct_5(var_0.a, firstLeadingBit(firstLeadingBit(~countOneBits(arg_0))), arg_0, select(select(!select(vec3<bool>(true, false, var_2.c), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, true, var_0.a)), select(!vec3<bool>(false, true, var_1.a.c), select(vec3<bool>(var_2.c, arg_1.x, var_0.a), vec3<bool>(true, true, false), vec3<bool>(arg_2.a.c, arg_1.x, false)), vec3<bool>(true, true, true)), arg_1.x), vec3<bool>(true, true, false), !(!vec3<bool>(true, var_2.c, var_2.c))), arg_1);
    let var_4 = var_0;
    return var_3.d.zz;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -884f);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1504f);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1372f + arg_0.x) + _wgslsmith_f_op_f32(step(arg_1.a.x, 748f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f))))));
    var_1 = -551f;
    let var_2 = max(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(4294967295u, 46991u, 55578u, 4294967295u) << (firstTrailingBit(vec4<u32>(1u, 110743u, 27584u, 1u)) % vec4<u32>(32u)), vec4<u32>(0u, _wgslsmith_mod_u32(1u, 4294967295u), ~1u, 1u)), min(~(~vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), vec4<u32>(~28774u, 4294967295u, ~8036u, select(11751u, 4294967295u, false))), ~vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(1u, _wgslsmith_add_u32(~4294967295u, ~0u), ~(~29546u), 1u));
    return var_2.x & _wgslsmith_mult_u32(~min(var_2.x, _wgslsmith_mult_u32(var_2.x, var_2.x)), _wgslsmith_mult_u32(reverseBits(max(var_2.x, 0u)), ~var_2.x));
}

fn func_2() -> f32 {
    var var_0 = false;
    let var_1 = ~u_input.a.x;
    let var_2 = ~vec2<u32>(_wgslsmith_div_u32(1u, 51244u), 1u << (0u % 32u));
    var_0 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true))), any(vec2<bool>(true, true))));
    var var_3 = vec4<u32>(func_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-125f, 126f, 702f), vec3<f32>(771f, -1018f, -616f))))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-292f - 514f), -1202f, -1550f), _wgslsmith_f_op_f32(step(-712f, 917f)), all(func_3(9103u, vec2<bool>(true, false), Struct_3(Struct_1(vec3<f32>(-777f, 1000f, -977f), 1000f, true), -1i, 625f)))), Struct_4(true)), 0u, 24375u | _wgslsmith_dot_vec3_u32(firstTrailingBit(max(vec3<u32>(var_2.x, 17540u, var_2.x), vec3<u32>(92218u, 0u, 0u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.x, 1u), vec3<u32>(var_2.x, 4294967295u, 53413u))), ~(~var_2.x));
    return -2041f;
}

fn func_5(arg_0: Struct_3) -> vec3<f32> {
    var var_0 = true;
    var var_1 = Struct_4(false);
    let var_2 = _wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(arg_0.b, i32(-1i) * -16189i)), -_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, u_input.a.x, -1i), ~(u_input.a ^ vec3<i32>(1i, 0i, 14274i))));
    var_1 = Struct_4(!all(vec3<bool>(false, arg_0.a.c, true)) == (var_1.a & !var_1.a));
    var var_3 = arg_0.a.b;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c))), arg_0.c, arg_0.a.b);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(Struct_3(Struct_1(vec3<f32>(_wgslsmith_div_f32(172f, 180f), -1814f, -1305f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(-406f)))), false), _wgslsmith_mod_i32(var_0, 1i), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1264f, 1641f) * _wgslsmith_f_op_f32(527f + -1000f)), true)))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -150f, -733f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1450f, var_1.x, 212f), vec3<f32>(472f, 768f, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, 210f, -360f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, var_1.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, 168f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1316f, var_1.x, 2302f) - vec3<f32>(-663f, 235f, -1807f))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(1137f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-677f)))), var_1.x, 697f);
    var var_2 = select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, all(vec4<bool>(false, false, true, false)), true, all(vec4<bool>(false, false, false, true))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true))), !vec4<bool>(true, select(true, true, true), true, true), false), select(select(vec4<bool>(select(false, false, false), true, true, any(vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !(_wgslsmith_dot_vec3_u32(vec3<u32>(34638u, arg_1, arg_0), vec3<u32>(17787u, arg_1, 1u)) == 17063u)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -921f, -1311f)) - vec3<f32>(var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(383f * 1852f))), var_2.x), _wgslsmith_f_op_vec3_f32(func_5(Struct_3(Struct_1(vec3<f32>(-161f, var_1.x, var_1.x), -348f, var_2.x & true), ~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(48322u, 28706u);
    let var_1 = select(vec4<bool>(var_0.a.c, true, true, all(func_3(_wgslsmith_add_u32(0u, 65519u), func_3(4294967295u, vec2<bool>(var_0.a.c, var_0.a.c), Struct_3(Struct_1(vec3<f32>(var_0.b.x, 313f, -1165f), 296f, false), u_input.a.x, -1520f)), Struct_3(var_0.a, u_input.a.x, -1438f)))), vec4<bool>(!select(var_0.a.c, !var_0.a.c, true), var_0.a.c, var_0.a.c, all(select(select(vec3<bool>(var_0.a.c, true, false), vec3<bool>(true, var_0.a.c, var_0.a.c), vec3<bool>(var_0.a.c, true, var_0.a.c)), select(vec3<bool>(var_0.a.c, true, var_0.a.c), vec3<bool>(true, var_0.a.c, var_0.a.c), true), true))), _wgslsmith_mod_i32(0i, u_input.a.x) <= _wgslsmith_div_i32(~_wgslsmith_div_i32(1i, 1i), 1i ^ u_input.a.x));
    var var_2 = !vec3<bool>(any(var_1), false, false);
    let var_3 = (u_input.a.x ^ -u_input.a.x) >> (max(~_wgslsmith_div_u32(1u, select(36135u, 4294967295u, var_0.a.c)), 1u) % 32u);
    var_2 = select(select(vec3<bool>(true, true, var_1.x | true), !var_1.zyy, var_1.wxw), !(!(!var_1.ywz)), any(vec4<bool>(false, any(!var_1.yxw), var_2.x, var_0.a.c)));
    let var_4 = Struct_3(var_0.a, -var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f * 403f)));
    var var_5 = !select(select(var_1, !var_1, var_1), var_1, var_1.x);
    var var_6 = !var_5.wx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + 1f)), _wgslsmith_add_i32(_wgslsmith_sub_i32(~countOneBits(-2147483647i), 0i << (_wgslsmith_dot_vec2_u32(vec2<u32>(118709u, 1u), vec2<u32>(81229u, 31898u)) % 32u)), _wgslsmith_mult_i32(var_3, var_4.b)), reverseBits(-countOneBits(u_input.a)));
}

