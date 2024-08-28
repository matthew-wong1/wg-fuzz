struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_2(vec4<f32>(241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(952f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-987f, 1544f), _wgslsmith_f_op_f32(-184f + _wgslsmith_f_op_f32(floor(-410f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f), arg_0.c)), arg_0, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, 698f, 496f) * vec3<f32>(-356f, -913f, 232f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, -1324f, arg_0.c), vec3<f32>(arg_0.c, 799f, arg_0.c))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, arg_0.c, arg_0.c)))))), arg_0, ~(~select(u_input.d, arg_1.x, false)) >> (~(~(~29039u)) % 32u));
    let var_1 = min(arg_1.x, 4294967295u);
    let var_2 = Struct_1(!any(select(vec3<bool>(var_0.d.a, var_0.d.a, var_0.d.a), !vec3<bool>(var_0.d.a, var_0.d.a, var_0.d.a), !vec3<bool>(var_0.b.a, true, false))), _wgslsmith_div_u32(reverseBits(38148u), 1u), 1382f);
    let var_3 = var_0.b;
    var var_4 = any(!vec3<bool>(!all(vec4<bool>(arg_0.a, var_2.a, true, var_2.a)), true, var_2.a));
    return ~reverseBits(_wgslsmith_clamp_u32(u_input.d, ~44244u >> (var_0.d.b % 32u), ~(var_1 | 1u)));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(650f))), Struct_1(all(vec2<bool>(true, true)), func_3(Struct_1(arg_0 != 776f, u_input.a.x, arg_0), _wgslsmith_add_vec2_u32(max(vec2<u32>(u_input.d, u_input.a.x), u_input.a.ww), ~vec2<u32>(u_input.a.x, u_input.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(920f * arg_0)))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-419f, arg_0, -430f, arg_0), vec4<f32>(arg_0, -308f, arg_0, arg_0)))), Struct_1((17501u << (u_input.a.x % 32u)) >= (u_input.d | 22699u), 8985u, _wgslsmith_f_op_f32(trunc(831f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 - 2331f), _wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_div_f32(arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(959f, arg_0, -1230f) + vec3<f32>(-545f, arg_0, -588f)))), Struct_1(false, ~_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(4294967295u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), ~u_input.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)) + arg_0), -130f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(min(-1368f, arg_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1227f)), _wgslsmith_f_op_f32(f32(-1f) * -960f))))), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false))));
    var var_1 = select(!(!vec2<bool>(select(var_0.e, false, true), true)), vec2<bool>(var_0.e, var_0.b.a), vec2<bool>(!(-322f < arg_0) & (-1298f == _wgslsmith_f_op_f32(1081f + var_0.c.c.x)), var_0.e));
    let var_2 = Struct_4(var_0.d.x, countOneBits(vec3<u32>(17844u, 85801u, ~(~var_0.b.b))), u_input.d, Struct_2(vec4<f32>(1383f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -170f))), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -684f)), var_0.c.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-685f, _wgslsmith_f_op_f32(floor(-363f)), _wgslsmith_f_op_f32(step(-641f, 639f))) * vec3<f32>(_wgslsmith_f_op_f32(-1589f * -853f), _wgslsmith_f_op_f32(step(var_0.b.c, 464f)), _wgslsmith_f_op_f32(arg_0 - 1452f))), var_0.c.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(9038u, 3506u), u_input.a.zx)));
    var_1 = vec2<bool>(false, var_2.d.b.a);
    var var_3 = Struct_1(var_2.d.b.a, ~abs(~4294967295u), _wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - var_0.a), 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.c))))));
    return var_0.b;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-764f, 581f) + -968f)))), Struct_1(false, ~u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2161f + _wgslsmith_f_op_f32(689f * -581f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(922f, -727f, 349f, 567f), vec4<f32>(-401f, -306f, 366f, -639f)))), Struct_1(true, u_input.d & 14990u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(555f + -733f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-878f, -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(944f * -343f))), _wgslsmith_f_op_f32(abs(-317f))), func_2(_wgslsmith_f_op_f32(-1f), u_input.c.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1000f, -833f)))), 3126f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(672f)) * -496f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -418f, -476f)) * vec3<f32>(-1328f, 929f, 212f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(264f, -913f, -847f) + vec3<f32>(1626f, 574f, 290f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-854f, 673f, -1000f), vec3<f32>(317f, 890f, -253f), false))))))), select(!select(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-940f, 929f))) != func_2(_wgslsmith_f_op_f32(-201f - 149f), max(9249i, 12406i)).c, any(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), true)))));
    var var_1 = -abs(-48486i);
    var var_2 = _wgslsmith_sub_vec2_i32(select(u_input.c, u_input.c, var_0.c.d.a), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.c.x), -1255i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 3361i, -1i), vec4<i32>(u_input.b, u_input.c.x, u_input.b, -6276i))), select(_wgslsmith_mult_i32(max(u_input.b, u_input.c.x), u_input.c.x), -2147483647i, true)));
    let var_3 = Struct_3(var_0.b.c, func_2(_wgslsmith_div_f32(590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.c * var_0.d.x))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(0i, u_input.b)) << (~1u % 32u), countOneBits(max(-2147483647i, var_2.x)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.d.x, 465f)), _wgslsmith_f_op_f32(var_0.d.x - -503f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1363f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(702f, var_0.c.b.c)), _wgslsmith_f_op_f32(var_0.d.x - -408f)), _wgslsmith_f_op_f32(f32(-1f) * -730f)), Struct_1(all(!vec4<bool>(var_0.e, true, false, var_0.b.a)), u_input.d, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(549f, var_0.a), func_2(var_0.c.b.c, var_2.x).c))), var_0.d, Struct_1(select(!var_0.c.b.a, false, true), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.c.d.b, 17144u), ~var_0.c.d.b), var_0.c.b.c), 1u), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(func_2(892f, ~u_input.b).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + -830f) - -194f), -678f))), var_0.e);
    var_2 = vec2<i32>(-18977i, -23013i);
    return Struct_1(false, 1u, var_0.b.c);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2574f * arg_1.c), arg_1.c, arg_1.c, 2124f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 233f, 970f, 1479f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-150f, 1589f, -1900f, arg_1.c))))))), func_1(), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)), -447f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, -801f, 1047f)))))), Struct_1(any(vec3<bool>(false, arg_0.x, false)), firstLeadingBit(abs(~u_input.d)), _wgslsmith_f_op_f32(-686f * -186f)), ~u_input.a.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-var_0.b.c), func_1(), Struct_2(vec4<f32>(_wgslsmith_div_f32(347f, var_0.d.c), arg_1.c, 994f, _wgslsmith_f_op_f32(-var_0.b.c)), Struct_1(true, 13809u, _wgslsmith_f_op_f32(floor(-330f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(var_0.a.xyz)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-717f, -301f, arg_1.c), var_0.c))), Struct_1(!(arg_1.c < -355f), var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.c, arg_1.c)))), 0u), _wgslsmith_f_op_vec3_f32(var_0.a.zzy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-113f + var_0.d.c), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_div_f32(-1143f, -347f)))), var_0.b.a);
    let var_2 = ~(~(~select(vec4<i32>(u_input.b, u_input.c.x, 0i, 1i), vec4<i32>(u_input.c.x, -26628i, -12288i, u_input.b) >> (u_input.a % vec4<u32>(32u)), var_0.b.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, -1393f, _wgslsmith_f_op_f32(var_0.a.x - var_1.a), _wgslsmith_f_op_f32(-arg_1.c))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.c.a - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.c, var_0.a.x, 484f, -447f), vec4<f32>(var_0.c.x, -1000f, arg_1.c, var_1.c.a.x))))));
    var var_4 = var_0.b.a;
    return Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-391f))), -135f, func_1().a)), u_input.a.ywx, _wgslsmith_clamp_u32(1u, (_wgslsmith_mod_u32(var_1.c.b.b, 4294967295u) << (24047u % 32u)) << (u_input.a.x % 32u), ~reverseBits(var_1.c.b.b)), Struct_2(var_3, Struct_1(true, ~1u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(329f + var_0.b.c), func_1().c))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_3.zxz), _wgslsmith_f_op_vec3_f32(round(var_0.a.wxw)))), arg_1, var_1.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(all(vec2<bool>(any(vec3<bool>(true, false, false)), true)) & true);
    var var_1 = func_4(vec4<bool>(true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1371f, 378f)), _wgslsmith_f_op_f32(ceil(-1824f)))) >= -635f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, 1i) >> (u_input.a % vec4<u32>(32u)), -vec4<i32>(u_input.b, u_input.c.x, -7491i, u_input.c.x)) > u_input.c.x, any(vec2<bool>(false, true))), func_1());
    var var_2 = -max(~countOneBits(1i), u_input.c.x);
    let var_3 = u_input.c.x;
    var var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

