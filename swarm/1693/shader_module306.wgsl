struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    let var_0 = u_input.b.x < ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, arg_1.c.a.x), arg_2.xy), u_input.b.zy), min(1u, u_input.e.x));
    var var_1 = firstLeadingBit(~reverseBits(-2147483647i));
    return abs(~4294967295u);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(239f, -1950f, 687f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(922f, 861f, 616f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-870f, -305f, 808f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, -398f, -1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-733f, 550f, 228f), vec3<f32>(2240f, -838f, 142f), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2296f, 921f, -241f))))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(937f)), -173f, -299f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, -1485f, 766f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(439f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -605f) + _wgslsmith_f_op_f32(floor(-1547f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-617f, var_0.x, false)))))), 2446f, _wgslsmith_f_op_f32(-var_0.x));
    var_0 = vec3<f32>(-360f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 897f)) * 196f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(736f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * var_0.x))))));
    var var_1 = Struct_3(~firstTrailingBit(13241i), Struct_2(u_input.c.x, Struct_1(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), u_input.e.yy ^ u_input.a.wz), _wgslsmith_add_vec2_i32(~u_input.c.xx, u_input.c.wy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -1063f)))), Struct_1(~reverseBits(arg_0), u_input.c.xx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, 1164f, var_0.x, var_0.x)))), !vec2<bool>(all(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))));
    let var_2 = max(4294967295u, _wgslsmith_sub_u32(var_1.b.b.a.x, max(func_3(vec2<bool>(true, var_1.c.x), var_1.b, vec3<u32>(4946u, u_input.b.x, arg_0.x)), _wgslsmith_div_u32(47573u, var_1.b.c.a.x)))) & var_1.b.b.a.x;
    return Struct_1(arg_0, vec2<i32>(var_1.a, abs(3505i)), var_1.b.b.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_3(-66329i, arg_1.e, vec2<bool>(arg_2.x, true));
    let var_1 = 2371f;
    var var_2 = Struct_2(arg_1.c, Struct_1(countOneBits(~(~arg_1.b.a)), u_input.c.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.c.c.x, 142f, arg_1.b.c.x, 141f), arg_1.e.c.c))), func_2(vec2<u32>(4294967295u, firstTrailingBit(var_0.b.c.a.x))));
    let var_3 = vec2<i32>(u_input.c.x, -2147483647i);
    return 21739u;
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = 90219i;
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_4(!vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -446f) == _wgslsmith_f_op_f32(round(arg_1.x)), !(!arg_2.x), _wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(u_input.a.x, u_input.b.x)) <= _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(1u, arg_0, 27819u))), Struct_1(func_2(~(~u_input.a.wz)).a, u_input.c.wx, arg_1), -(i32(-1i) * -_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(var_0, 33071i, u_input.c.x, var_0))), _wgslsmith_sub_i32(~func_2(max(u_input.a.xx, vec2<u32>(0u, 0u))).b.x, -2147483647i), Struct_2(_wgslsmith_dot_vec4_i32(min(~u_input.c, u_input.c & u_input.c), vec4<i32>(1i, ~var_0, ~(-2147483647i), u_input.d)), Struct_1(countOneBits(reverseBits(u_input.e.zy)), vec2<i32>(~(-63242i), var_0), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -174f, arg_1.x, -742f) * arg_1)))), func_2(u_input.e.zy)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.e.c.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -476f))))));
    var_3 = _wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(-var_2.b.c.x));
    return Struct_1(~_wgslsmith_div_vec2_u32(select(max(vec2<u32>(54028u, 0u), vec2<u32>(var_2.b.a.x, u_input.a.x)), vec2<u32>(0u, u_input.e.x), var_1.x), (u_input.b.zx | vec2<u32>(arg_0, var_2.e.b.a.x)) & select(vec2<u32>(var_2.b.a.x, var_2.e.c.a.x), vec2<u32>(var_2.e.b.a.x, 4294967295u), vec2<bool>(var_1.x, arg_2.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(2147483647i, -9832i), u_input.c.x, ~0i), _wgslsmith_add_i32(u_input.c.x, -18475i) | ~(-29149i)), firstTrailingBit(vec2<i32>(-11535i, i32(-1i) * -2147483647i)), func_2(var_2.e.b.a << (vec2<u32>(var_2.b.a.x, u_input.b.x) % vec2<u32>(32u))).b >> (vec2<u32>(u_input.e.x >> (var_2.b.a.x % 32u), 40981u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(62501u, 4294967295u)).c + _wgslsmith_f_op_vec4_f32(ceil(arg_1))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1089f, -141f, 521f, 889f), var_2.e.c.c), _wgslsmith_div_vec4_f32(var_2.b.c, vec4<f32>(var_2.e.b.c.x, var_2.b.c.x, arg_1.x, -915f))))))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> Struct_2 {
    var var_0 = max(vec3<u32>(arg_1, arg_0.c.a.x, arg_0.c.a.x), u_input.b) ^ u_input.b;
    var var_1 = vec3<i32>(17318i, ~_wgslsmith_add_i32(~(-2147483647i) | -arg_0.a, func_2(~vec2<u32>(arg_0.c.a.x, u_input.a.x)).b.x), ~min(12458i, 9530i << (arg_1 % 32u)));
    let var_2 = arg_2.c.x || (!any(!vec4<bool>(false, arg_2.c.x, true, arg_2.c.x)) & false);
    var_1 = u_input.c.yww;
    var_0 = ~((u_input.e & countOneBits(vec3<u32>(4294967295u, 782u, var_0.x))) >> (vec3<u32>(1u & _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(arg_1, u_input.e.x, var_0.x, 8322u)), var_0.x, _wgslsmith_sub_u32(~1u, 1u)) % vec3<u32>(32u)));
    return Struct_2(abs(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, arg_0.b.b.x) & u_input.c.xy, u_input.c.xz), reverseBits(~u_input.c.xx))), func_4(~123204u, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(arg_0.b.c)))), arg_0.c.c)), arg_2.c), Struct_1(reverseBits(max(var_0.yz << (var_0.zz % vec2<u32>(32u)), ~vec2<u32>(0u, arg_0.b.a.x))), vec2<i32>(-1i) * -abs(var_1.xz), arg_2.b.c.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_sub_i32(1i, 26012i), func_5(Struct_2(u_input.c.x, Struct_1(u_input.b.zz, vec2<i32>(u_input.c.x, u_input.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-453f, 960f, 302f, 744f)))), func_4(func_1(Struct_1(u_input.e.xx, vec2<i32>(u_input.c.x, u_input.d), vec4<f32>(100f, 108f, 990f, -317f)), Struct_4(vec3<bool>(false, false, true), Struct_1(vec2<u32>(u_input.a.x, 29713u), u_input.c.zx, vec4<f32>(-377f, -673f, 977f, -657f)), 1i, 0i, Struct_2(36059i, Struct_1(vec2<u32>(u_input.b.x, u_input.e.x), vec2<i32>(u_input.c.x, u_input.d), vec4<f32>(697f, -1003f, 131f, 819f)), Struct_1(vec2<u32>(0u, 4294967295u), u_input.c.xz, vec4<f32>(219f, -661f, 901f, 1455f)))), vec3<bool>(true, true, false)), _wgslsmith_div_vec4_f32(vec4<f32>(-3089f, -1000f, -104f, -1326f), vec4<f32>(-1200f, -1669f, -637f, -1006f)), vec2<bool>(true, true))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~4294967295u, 0u, u_input.a.x | u_input.b.x), 1u), Struct_3(u_input.c.x, Struct_2(58872i, Struct_1(u_input.b.yx, u_input.c.xz, vec4<f32>(-1184f, 1518f, 1427f, 758f)), Struct_1(u_input.b.xy, vec2<i32>(-2147483647i, -1i), vec4<f32>(556f, -413f, 723f, -1216f))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), !(!select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var var_1 = !vec4<bool>(any(!(!vec3<bool>(var_0.c.x, false, var_0.c.x))), true, 4294967295u != _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.c.a.x, 0u, 4294967295u), vec3<u32>(u_input.a.x, var_0.b.b.a.x, var_0.b.c.a.x)), true);
    var_1 = select(!vec4<bool>(true, !any(var_1.zwx), any(!vec4<bool>(var_0.c.x, false, var_1.x, var_0.c.x)), var_0.c.x), vec4<bool>(var_1.x, any(var_1.yz), true, any(!var_1.wyy)), select(select(select(!vec4<bool>(false, var_1.x, var_0.c.x, true), vec4<bool>(false, true, var_0.c.x, false), any(vec2<bool>(var_0.c.x, var_0.c.x))), !(!vec4<bool>(true, true, var_0.c.x, false)), !vec4<bool>(true, var_1.x, var_1.x, var_0.c.x)), select(!select(vec4<bool>(var_0.c.x, true, false, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, true, var_1.x, true)), select(select(vec4<bool>(false, true, var_1.x, false), vec4<bool>(false, var_0.c.x, true, var_1.x), vec4<bool>(false, true, true, false)), !vec4<bool>(var_1.x, var_0.c.x, var_1.x, false), select(vec4<bool>(var_1.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_1.x, var_1.x, true, false), false)), true), !vec4<bool>(366f > var_0.b.c.c.x, true, var_1.x, false)));
    var var_2 = Struct_1(select(vec2<u32>(~3653u ^ ~var_0.b.b.a.x, ~(~var_0.b.b.a.x)), vec2<u32>(0u, _wgslsmith_add_u32(~u_input.a.x, 0u)), true), var_0.b.c.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, _wgslsmith_f_op_f32(step(var_0.b.c.c.x, var_0.b.b.c.x)), -439f, _wgslsmith_f_op_f32(-395f * -1740f)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(max(-194f, -1137f)), _wgslsmith_f_op_f32(f32(-1f) * -1846f), _wgslsmith_f_op_f32(trunc(1158f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, ~(~(-55714i)), _wgslsmith_mod_u32(u_input.b.x, reverseBits(1u)), ~u_input.c.wwy, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(783f, var_0.b.c.c.x, 732f, -1856f))));
}

