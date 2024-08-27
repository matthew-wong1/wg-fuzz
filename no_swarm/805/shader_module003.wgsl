struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = all(arg_3.a.wx);
    let var_1 = Struct_1(!(!(!vec4<bool>(true, arg_3.a.x, true, false))), _wgslsmith_f_op_vec2_f32(arg_2.zw - arg_2.zx), !any(vec3<bool>(arg_3.c, 263f == arg_2.x, !arg_1.c)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-379f, arg_1.b.x, arg_3.d.x, -197f)))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.d.x, -555f, _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(arg_3.b.x + 1887f)))), !(!vec4<bool>(arg_3.a.x, arg_3.a.x, arg_3.c, arg_1.c)))), reverseBits(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.e, -17001i, -1i), countOneBits(arg_0))));
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -72892i, countOneBits(11733i)), u_input.d);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: bool) -> f32 {
    var var_0 = Struct_1(select(arg_1.a, arg_0.a, arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.b.x))))))), select(~u_input.e.x != _wgslsmith_div_u32(~4294967295u, 1u), arg_2.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-186f, 1260f, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, 958f, 1000f, 1000f) * vec4<f32>(-1185f, arg_0.d.x, 1123f, arg_0.b.x)))), arg_0.e);
    let var_1 = vec4<i32>(max(~_wgslsmith_add_i32(-10896i, arg_0.e), var_0.e), var_0.e, _wgslsmith_mult_i32(1i, ~(-1i)), -2147483647i) ^ _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.e, arg_1.e, -1i, 0i), vec4<i32>(-1i, u_input.d.x, -7606i, arg_1.e) ^ vec4<i32>(0i, u_input.b.x, arg_0.e, -5134i)) & vec4<i32>(-25522i, _wgslsmith_dot_vec2_i32(u_input.d.xy, u_input.b), 31406i, arg_1.e), vec4<i32>(func_3(u_input.d >> (vec3<u32>(4294967295u, u_input.e.x, u_input.e.x) % vec3<u32>(32u)), Struct_1(var_0.a, vec2<f32>(var_0.d.x, var_0.d.x), true, arg_0.d, u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1158f, arg_0.b.x, arg_0.d.x, arg_1.b.x)), arg_0), i32(-1i) * -17837i, -2147483647i, countOneBits(arg_1.e)));
    let var_2 = Struct_1(arg_0.a, vec2<f32>(734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(abs(arg_0.b.x))) + -1151f)), arg_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(var_0.d, vec4<f32>(-1310f, arg_0.b.x, var_0.d.x, arg_1.b.x))))) * _wgslsmith_f_op_vec4_f32(arg_1.d - vec4<f32>(1059f, arg_0.b.x, -505f, -327f)))), i32(-1i) * -_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, arg_0.e, u_input.a ^ 5532i));
    return -1734f;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> u32 {
    return abs(abs(max(_wgslsmith_sub_u32(u_input.e.x << (u_input.e.x % 32u), u_input.e.x), 1u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<u32>) -> vec4<f32> {
    var var_0 = func_4(Struct_1(vec4<bool>(true, true, true, true), vec2<f32>(638f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f + 751f))), false, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(819f, 1080f), true, vec4<f32>(-867f, -586f, 832f, 930f), 16144i), Struct_1(vec4<bool>(false, arg_0.x, false, true), vec2<f32>(1689f, -1344f), true, vec4<f32>(-682f, -287f, 254f, -387f), u_input.b.x), vec4<bool>(true, true, arg_0.x, false), arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-502f * 416f) - _wgslsmith_f_op_f32(func_2(Struct_1(arg_0, vec2<f32>(-1612f, -461f), arg_0.x, vec4<f32>(220f, -1238f, -1119f, -214f), u_input.b.x), Struct_1(vec4<bool>(false, true, arg_0.x, arg_0.x), vec2<f32>(1850f, 460f), true, vec4<f32>(1000f, -963f, -685f, -1125f), -14153i), arg_0, false))), 475f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-356f, -311f)), _wgslsmith_f_op_f32(max(-1438f, -1146f)))), _wgslsmith_mod_i32(u_input.b.x, 6187i)), ~reverseBits(arg_1) >= ~(~(~arg_2.x)), arg_0.x);
    var var_1 = Struct_1(!select(!select(arg_0, arg_0, arg_0), !vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f)))), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1250f) * -207f), -115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-858f + -588f), _wgslsmith_f_op_f32(-201f + 1373f), false))))), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.b.x & u_input.b.x), 0i));
    var_1 = Struct_1(var_1.a, var_1.b, true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1218f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2137f)) + -1658f), _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b.x, -151f, -463f, 259f), vec4<f32>(var_1.d.x, var_1.b.x, var_1.d.x, var_1.b.x)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2035f, -2456f, var_1.b.x, -136f))))))), -max(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, -2147483647i, 9441i)), vec4<i32>(var_1.e, -2147483647i, 0i, u_input.c)), 30711i));
    let var_2 = Struct_1(select(var_1.a, select(select(!vec4<bool>(true, true, arg_0.x, false), select(arg_0, vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(var_1.a.x, arg_0.x, arg_0.x, var_1.c)), var_1.c), select(select(vec4<bool>(false, arg_0.x, arg_0.x, true), arg_0, vec4<bool>(true, var_1.c, true, var_1.c)), arg_0, all(vec4<bool>(var_1.c, var_1.c, arg_0.x, true))), any(vec2<bool>(true, true))), any(!arg_0.wxy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1026f - _wgslsmith_f_op_f32(sign(497f))), _wgslsmith_f_op_f32(trunc(581f)))), all(vec4<bool>(_wgslsmith_dot_vec3_i32(u_input.d, u_input.d) <= abs(u_input.a), !var_1.a.x, any(vec4<bool>(var_1.c, arg_0.x, var_1.c, var_1.c)), firstTrailingBit(84440u) >= 0u)), var_1.d, 1i);
    let var_3 = vec2<u32>(~(~(~(~2809u))), arg_2.x);
    return vec4<f32>(413f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b.x)))) + _wgslsmith_f_op_f32(var_2.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)))), 2332f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(934f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) + _wgslsmith_f_op_vec4_f32(func_1(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), u_input.e.x, u_input.e.wx)).x));
    var var_1 = select(vec4<bool>(false, select(false, !all(vec4<bool>(true, true, true, true)), true), true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), true), !(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)))));
    var_1 = !select(vec4<bool>(var_1.x, (-275f <= arg_0.x) | true, var_1.x, !var_1.x), select(select(!vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, false, var_1.x, true), any(vec2<bool>(false, true))), vec4<bool>(any(var_1.zw), false, !var_1.x, true & var_1.x), !var_1.x), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -105f);
    return Struct_1(vec4<bool>(!all(select(vec2<bool>(var_1.x, var_1.x), var_1.wx, var_1.x)), !(all(vec3<bool>(var_1.x, false, var_1.x)) && var_1.x), false, arg_0.x < _wgslsmith_f_op_f32(-1147f - arg_1)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(294f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -617f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -840f))))), var_1.x, vec4<f32>(_wgslsmith_f_op_f32(select(242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 2310f)), 11887i != ~u_input.d.x)), -857f, 397f, var_0), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~u_input.d.xx));
    var var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1100f, -202f, -200f, 1161f), vec4<f32>(-129f, -657f, -1013f, 1409f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1517f, -2080f, -923f, 466f) - vec4<f32>(-283f, 302f, 177f, 2022f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, false, true), 39811u, vec2<u32>(u_input.e.x, 2482u))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(864f, -497f, 1000f, -1000f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-2238f + 1163f), _wgslsmith_div_f32(-812f, 171f), _wgslsmith_f_op_f32(f32(-1f) * -1543f), _wgslsmith_f_op_f32(-928f + -293f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1282f, 153f, -1000f, -794f), vec4<f32>(553f, -485f, -604f, 405f), true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(508f, 115f, -292f, 1760f)))))))), _wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_sub_u32(abs(1u), func_4(Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(817f, -1000f), false, vec4<f32>(407f, 801f, -636f, 763f), var_0.x), true, true)) << (_wgslsmith_dot_vec4_u32(~u_input.e | u_input.e, _wgslsmith_add_vec4_u32(countOneBits(u_input.e), abs(vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)))) % 32u));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_1.d.x, _wgslsmith_f_op_f32(-var_1.b.x), -117f) + var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f * -1124f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(func_5(var_1.d, -701f, u_input.e.x), Struct_1(var_1.a, vec2<f32>(-663f, 841f), var_1.c, vec4<f32>(var_1.d.x, var_1.b.x, var_1.d.x, var_1.b.x), u_input.b.x), func_5(var_1.d, var_1.b.x, 6008u).a, var_1.a.x || true)) * _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, var_1.a.x, var_1.c, var_1.c), _wgslsmith_clamp_u32(u_input.e.x, 10743u, 36585u), ~u_input.e.yw)).x)), abs(abs(u_input.e.x)));
    let var_3 = vec3<u32>(max(0u, 4294967295u), ~31395u, u_input.e.x) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(44588u, u_input.e.x), vec2<u32>(u_input.e.x, 0u), var_1.c) << (vec2<u32>(u_input.e.x, 19512u) % vec2<u32>(32u)), max(u_input.e.zz >> (u_input.e.xx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.e.zx, vec2<u32>(1u, 4294967295u)))), u_input.e.x, (58266u ^ ~u_input.e.x) | 39915u) % vec3<u32>(32u));
    let var_4 = _wgslsmith_mult_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(u_input.c, 2147483647i, ~var_1.e))), vec3<i32>(var_0.x, ~0i, var_0.x));
    var_2 = Struct_1(var_2.a, vec2<f32>(var_2.d.x, _wgslsmith_div_f32(-755f, -680f)), var_1.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.d - _wgslsmith_f_op_vec4_f32(round(var_1.d)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.d)))), var_1.e);
    var_2 = Struct_1(vec4<bool>(all(vec3<bool>(true, false, u_input.e.x == var_3.x)), !(!var_1.a.x), var_2.a.x, var_1.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(700f - 504f))))), false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, var_1.b.x, var_1.b.x, var_2.b.x)) - var_2.d))), var_2.d), -1i);
    let var_5 = 1u;
    let var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(2384f, var_1.b.x, -500f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, -vec4<i32>(countOneBits(44575i) >> (u_input.e.x % 32u), 61618i, 0i, var_1.e), var_2.d.x);
}

