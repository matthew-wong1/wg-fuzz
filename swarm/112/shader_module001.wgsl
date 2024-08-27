struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 22> = array<bool, 22>(false, true, true, true, true, true, false, true, true, false, false, true, false, false, false, true, true, false, false, true, true, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool) -> vec3<f32> {
    global1 = array<bool, 22>();
    global1 = array<bool, 22>();
    let var_0 = false;
    global1 = array<bool, 22>();
    let var_1 = false;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(986f + 442f), -1064f, 463f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1284f, 2502f, 384f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1097f, -460f, -672f)) - vec3<f32>(335f, 413f, 318f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1014f, 158f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1204f) - -1816f)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1833f) - -2522f), -463f, _wgslsmith_f_op_f32(abs(-473f)))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = vec3<i32>(2147483647i, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(~u_input.b.x, i32(-1i) * -42570i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, 3966i, u_input.b.x), u_input.b.x), u_input.a), _wgslsmith_sub_i32(u_input.b.x, 1i) >> (arg_0.a % 32u));
    var_0 = select(vec3<i32>(~1i, u_input.c, -(var_0.x ^ u_input.c)) | ~u_input.b, firstLeadingBit(vec3<i32>(firstLeadingBit(-2147483647i | var_0.x), firstLeadingBit(var_0.x), countOneBits(select(-40752i, -15914i, true)))), vec3<bool>(true, true, !all(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])) == true));
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -228f);
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.b, arg_0.b), arg_0.b, !vec3<bool>(true, arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b - arg_0.b)))) - _wgslsmith_f_op_vec3_f32(-arg_0.b)), Struct_1(firstLeadingBit(arg_0.a ^ 43097u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_0.b) - _wgslsmith_f_op_vec3_f32(-arg_0.b)), _wgslsmith_f_op_vec3_f32(-arg_0.b)), arg_0.c), arg_0.b.x, any(select(vec2<bool>(any(arg_0.c.yw), any(arg_0.c.wzw)), !(!vec2<bool>(arg_0.c.x, global1[_wgslsmith_index_u32(arg_1, 22u)])), all(!arg_0.c.xw))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.b.b.x, var_2.b.b.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(802f - arg_0.b.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_2.c)), _wgslsmith_f_op_f32(f32(-1f) * -206f))))) + _wgslsmith_f_op_f32(-var_2.b.b.x));
}

fn func_2() -> f32 {
    global0 = true;
    var var_0 = 40175u;
    global0 = false;
    global0 = true;
    var var_1 = ~(~select(vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.d, u_input.d), u_input.d, ~4294967295u, 1u), abs(vec4<u32>(u_input.d, 1u, 4294967295u, u_input.d) ^ vec4<u32>(4294967295u, 67835u, u_input.d, u_input.d)), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(0u, 22u)])), true, true, global1[_wgslsmith_index_u32(u_input.d, 22u)])));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, 1f), _wgslsmith_f_op_f32(func_4(Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(var_1.x, 27651u, 1u, 56259u), global1[_wgslsmith_index_u32(1u, 22u)])), !vec4<bool>(true, global1[_wgslsmith_index_u32(21963u, 22u)], global1[_wgslsmith_index_u32(43766u, 22u)], global1[_wgslsmith_index_u32(22708u, 22u)])), 35801u >> (_wgslsmith_mod_u32(u_input.d, u_input.d) % 32u))), all(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)])))));
}

fn func_5(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = 14151u;
    var var_1 = min(firstLeadingBit(abs(_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.d, 0u, 40304u), vec3<u32>(u_input.d, u_input.d, u_input.d), false), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 35037u, u_input.d), vec3<u32>(8859u, 1u, u_input.d))))), ~vec3<u32>(u_input.d | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, 0u, 12561u)), abs(~u_input.d), 0u));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 521f, -1000f))))), !select(select(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(52079u, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], true, true, false), true), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(72255u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(0u, 22u)]))), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 22u)], all(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(7474u, 22u)], true, true)), all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_1.x, 22u)]))), vec4<bool>(false, global1[_wgslsmith_index_u32(29851u, 22u)] && false, !global1[_wgslsmith_index_u32(var_1.x, 22u)], false)), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(85468u), ~var_1.x), ~2668u), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1275f, arg_0.x, -546f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))), Struct_1(0u, vec3<f32>(arg_0.x, 1753f, _wgslsmith_f_op_f32(-arg_0.x)), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(0u, 22u)])), arg_0.x, false), Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1554f, _wgslsmith_f_op_f32(ceil(arg_0.x)), _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))))), Struct_1(~_wgslsmith_clamp_u32(var_1.x, u_input.d, 32143u), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(arg_0, vec3<f32>(arg_0.x, 1440f, -898f))))), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], true, global1[_wgslsmith_index_u32(61111u, 22u)], global1[_wgslsmith_index_u32(var_1.x, 22u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_1.x, 22u)], global1[_wgslsmith_index_u32(18843u, 22u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-752f, 175f))), global1[_wgslsmith_index_u32(~1u, 22u)] && true));
    var_0 = ~abs(~0u >> (var_2.c % 32u));
    var var_3 = 124686u;
    return var_2.b.xwx;
}

fn func_1() -> vec4<bool> {
    global1 = array<bool, 22>();
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -539f)));
    let var_1 = ~(-_wgslsmith_add_i32(~(-15994i & u_input.b.x), u_input.c));
    global0 = global1[_wgslsmith_index_u32(67400u, 22u)];
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(388f, 619f, 634f) * vec3<f32>(-201f, -921f, 1421f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-870f, 522f, 1387f) + vec3<f32>(324f, -826f, -300f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 677f, -1684f)))))), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(1000f))) - vec3<f32>(1f, 1f, 1f)), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, global1[_wgslsmith_index_u32(11546u, 22u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 22u)], true, false, var_0.x), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(u_input.d, 22u)]), var_0.x), !global1[_wgslsmith_index_u32(73780u, 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1094f)), _wgslsmith_f_op_f32(step(-1000f, 762f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-549f, -868f)) + -337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1236f))))), all(var_0.zy));
    return !var_2.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(99928u, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], true))), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(u_input.d, 22u)]), func_1(), vec4<bool>(u_input.d == u_input.d, true, func_5(vec3<f32>(-617f, 1222f, 727f)).x, true)), !func_1()), vec4<bool>(any(func_5(_wgslsmith_div_vec3_f32(vec3<f32>(1222f, -712f, -172f), vec3<f32>(-355f, 1000f, -402f))).xz), all(vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3076u, u_input.d, u_input.d, 23263u), vec4<u32>(399u, 21513u, u_input.d, 36517u)), 22u)], true)), global1[_wgslsmith_index_u32(u_input.d, 22u)], !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.d, u_input.d), 22u)]), vec4<bool>(any(func_1().ww), select(false, !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1731u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, 66327u)), 22u)], false), false, global1[_wgslsmith_index_u32(1u & reverseBits(u_input.d), 22u)] & !(0i < u_input.a)));
    global1 = array<bool, 22>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2046f - 432f) - _wgslsmith_f_op_f32(f32(-1f) * -1029f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(926f * 1206f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-442f)))) - 1000f)), Struct_1(u_input.d, _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(~u_input.d, 136u ^ u_input.d, 1u, ~0u), var_0.x)), select(var_0, vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.d, 22u)], any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 22u)], false, true, false)), true), !(!vec4<bool>(true, global1[_wgslsmith_index_u32(29072u, 22u)], true, false)))), 1498f, any(vec2<bool>(true, false)));
    var var_2 = countOneBits(firstLeadingBit(~(vec4<i32>(63401i, -10251i, u_input.a, u_input.b.x) & vec4<i32>(u_input.a, -45221i, u_input.b.x, 2147483647i))) & -select(vec4<i32>(u_input.c, u_input.a, u_input.b.x, u_input.b.x), vec4<i32>(7032i, u_input.c, u_input.c, u_input.c) << (vec4<u32>(13438u, var_1.b.a, u_input.d, 19947u) % vec4<u32>(32u)), !var_1.b.c));
    var var_3 = !func_1().zxz;
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx);
}

