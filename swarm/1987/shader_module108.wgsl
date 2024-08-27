struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_4) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) * 751f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(539f, -359f, false))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-204f - -701f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(255f, 577f, arg_0.x)) - _wgslsmith_f_op_f32(1000f * 2130f))))));
    let var_1 = Struct_3(all(select(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(true, true == arg_0.x, false & arg_0.x, select(false, arg_0.x, true)), select(!vec4<bool>(true, arg_0.x, arg_0.x, true), !vec4<bool>(arg_0.x, false, true, arg_0.x), false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1241f, 1081f, 1082f, 953f), vec4<f32>(172f, 1000f, -1123f, -484f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-717f, 1870f, 2370f, -904f), vec4<f32>(1644f, 938f, 673f, -990f))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1538f, 1000f, 419f, 2088f))), !vec4<bool>(arg_0.x, true, true, arg_0.x)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(932f, -2117f, -584f, 391f), vec4<f32>(1634f, -563f, 1737f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(152f, 215f, 596f, 2520f), vec4<f32>(926f, 225f, -169f, 1845f)))))), arg_1 ^ ~(~(~1u)), arg_0.x);
    var var_2 = arg_1 != arg_2.b;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(-574f)), 884f, _wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x)))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1.b.x, 347f, arg_0.x)), _wgslsmith_f_op_f32(-var_1.b.x)), var_1.b.x)));
    var_2 = all(select(vec4<bool>(_wgslsmith_mod_u32(u_input.e, var_1.c) != var_1.c, false, true, true), vec4<bool>(!all(arg_0), _wgslsmith_add_i32(u_input.d, arg_2.a) > _wgslsmith_div_i32(1i, arg_2.a), true, u_input.b <= -u_input.b), vec4<bool>(all(!vec4<bool>(true, true, var_1.a, var_1.a)), !arg_0.x, true, true)));
    return var_1.d;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> vec2<i32> {
    var var_0 = -46711i;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.b.yzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -180f))), 1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0))))), u_input.c < select(_wgslsmith_dot_vec3_u32(vec3<u32>(43531u, 84698u, u_input.c), select(u_input.a.zyy, vec3<u32>(4294967295u, u_input.e, 0u), false)), 1u, func_3(vec2<bool>(false, true), 0u, Struct_4(u_input.d, 4294967295u)) == any(vec2<bool>(false, true)))));
    let var_2 = Struct_2(Struct_1(4294967295u), arg_2.b.yw);
    let var_3 = min(max(countOneBits(1699u), 18143u) & ~(~firstTrailingBit(arg_2.c)), arg_2.c);
    var var_4 = _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-u_input.d), _wgslsmith_sub_i32(u_input.d, (u_input.b >> (1u % 32u)) << (44150u % 32u)), -1i, 17272i), min(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, 12411i), vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b)), vec4<i32>(0i, u_input.d, 25708i, 14981i), ~vec4<i32>(33508i, 25850i, -1i, u_input.b)), min(-vec4<i32>(6556i, u_input.b, u_input.b, u_input.d), vec4<i32>(-82691i, -33193i, u_input.b, -2147483647i) & vec4<i32>(29331i, -1i, u_input.d, u_input.d))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.d), vec4<i32>(-1i, u_input.d, u_input.d, u_input.b)) & vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.b))));
    return _wgslsmith_clamp_vec2_i32(countOneBits(abs(vec2<i32>(-u_input.d, _wgslsmith_dot_vec3_i32(var_4.xwx, vec3<i32>(var_4.x, 1i, var_4.x))))), ~(var_4.zx >> (u_input.a.wz % vec2<u32>(32u))), var_4.zz);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1771f);
    let var_1 = Struct_3(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(959f, var_0, var_0, var_0) * vec4<f32>(-2388f, var_0, -672f, var_0)) + _wgslsmith_div_vec4_f32(vec4<f32>(-997f, 186f, 821f, 305f), vec4<f32>(var_0, var_0, var_0, 167f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-454f)), var_0, var_0, 1494f), true)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, var_0, -2406f, var_0)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(floor(var_0)), 572f, var_0))), countOneBits(abs(_wgslsmith_mod_u32(~53272u, 21656u))), true);
    let var_2 = -_wgslsmith_mod_i32(_wgslsmith_mod_i32(reverseBits(arg_1.x), -(u_input.d & arg_0.x)), 34974i);
    var var_3 = !select(!vec4<bool>(false, all(vec4<bool>(var_1.a, var_1.a, false, true)), var_1.a, var_1.a), !(!select(vec4<bool>(var_1.d, var_1.d, var_1.a, var_1.d), vec4<bool>(var_1.a, true, true, true), var_1.d)), select(vec4<bool>(var_1.d, var_0 > -1754f, true, func_3(vec2<bool>(var_1.a, var_1.a), 7032u, Struct_4(-24810i, 87292u))), select(vec4<bool>(false, true, var_1.a, var_1.d), !vec4<bool>(var_1.d, var_1.a, var_1.a, true), select(vec4<bool>(true, true, var_1.d, var_1.a), vec4<bool>(true, true, var_1.a, false), var_1.d)), (var_2 != 0i) | !var_1.a));
    let var_4 = Struct_2(Struct_1(~_wgslsmith_sub_u32(4294967295u, abs(57781u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_1.b.yz, vec2<f32>(838f, var_1.b.x), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(ceil(var_1.b.xy)))), _wgslsmith_div_vec2_f32(var_1.b.wz, vec2<f32>(var_1.b.x, var_1.b.x)))), _wgslsmith_f_op_vec2_f32(abs(var_1.b.xy)))));
    return var_4.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4) -> f32 {
    let var_0 = Struct_2(func_4(-func_2(arg_0.x, true, Struct_3(false, vec4<f32>(690f, arg_0.x, -581f, 1277f), 4302u, false)) ^ vec2<i32>(arg_1.a << (18336u % 32u), abs(-1i)), -vec2<i32>(arg_1.a, ~(-37308i))), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-717f + 228f), -2306f)), _wgslsmith_f_op_f32(-arg_0.x), !(arg_1.b == 4294967295u)))));
    var var_1 = var_0;
    var var_2 = (u_input.d | abs(max(i32(-1i) * -26208i, -13695i))) != arg_1.a;
    let var_3 = 889f;
    var var_4 = 0i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, var_3)), 897f)) + _wgslsmith_f_op_f32(max(1206f, _wgslsmith_f_op_f32(arg_0.x - 485f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1866f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(1482f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-873f - 287f)))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(680f, 411f, 715f, 179f), Struct_4(u_input.b, 88198u))), _wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-822f + -1092f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1602f, 488f, 304f))), false)))));
    let var_1 = Struct_4(abs(max(-(2147483647i ^ u_input.b), 1i)), ~(~(~_wgslsmith_add_u32(441u, 1u))));
    let var_2 = !vec3<bool>(!any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true)), all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false))) | false, select(!any(vec2<bool>(false, false)), false, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(var_0.zz));
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1756f, 350f));
    let var_4 = _wgslsmith_mult_vec2_u32(~max(vec2<u32>(u_input.e, 1u), ~(vec2<u32>(u_input.c, u_input.a.x) << (vec2<u32>(4294967295u, 10956u) % vec2<u32>(32u)))), ~(~vec2<u32>(51779u, var_1.b)) & (abs(u_input.a.xz) | max(vec2<u32>(1u, u_input.e) ^ vec2<u32>(1u, 4294967295u), ~vec2<u32>(35138u, var_1.b))));
    var var_5 = var_3.x;
    var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1631f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, var_0.x, var_2.x))))))));
    var var_6 = abs(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)))), u_input.a.zyx);
}

