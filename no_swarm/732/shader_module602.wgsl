struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_3(vec4<f32>(arg_0.e.c, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f + 1639f)))), arg_0.b.c));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, _wgslsmith_div_f32(1020f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(885f * 544f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1688f, var_0.a.x, arg_0.c.x, 635f)), !arg_0.d.x)) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, var_0.a.x) - -538f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-791f))), _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(arg_0.c.x, -544f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-222f + arg_0.c.x)))));
    global0 = array<vec2<u32>, 20>();
    let var_1 = vec3<bool>(arg_0.d.x, true, arg_0.d.x);
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1051f)) - -1000f) * 647f), -1438f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-163f + _wgslsmith_f_op_f32(f32(-1f) * -503f)))), arg_0.e.c));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) * arg_0.c.x)))), arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.c.x)) + 297f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-924f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-115f, _wgslsmith_f_op_f32(sign(-1040f))))));
    global0 = array<vec2<u32>, 20>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_0, -734f, _wgslsmith_f_op_f32(var_0 + var_0))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 656f, var_0, -1803f)))))));
    var var_2 = Struct_2(min(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(u_input.c.x, 20u)] >> (global0[_wgslsmith_index_u32(3556u, 20u)] % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, u_input.a.x), u_input.a.xw), countOneBits(global0[_wgslsmith_index_u32(u_input.b, 20u)]) >> (vec2<u32>(u_input.c.x, u_input.a.x) % vec2<u32>(32u))) >> (~countOneBits(vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), Struct_1(i32(-1i) * -2147483647i, vec2<u32>(u_input.a.x, ~5497u), -559f), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(u_input.a.xw, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-34360i, 0i, -1i, 27078i), vec4<i32>(u_input.d, 1i, u_input.d, -2147483647i)), u_input.c.zx, var_1.a.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1768f, var_1.a.x, -886f, 600f), _wgslsmith_div_vec4_f32(var_1.a, vec4<f32>(2055f, var_1.a.x, 604f, var_1.a.x))), vec3<bool>(true, true, true), Struct_1(-21488i | u_input.d, u_input.a.xx, _wgslsmith_f_op_f32(abs(var_0)))))), vec3<bool>(var_0 == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -549f)), !(!any(vec4<bool>(true, true, false, false))), true), Struct_1(min(-75701i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(378i, u_input.d, u_input.d))), max(u_input.a.ww, vec2<u32>(1u, ~1u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) + _wgslsmith_f_op_f32(-var_1.a.x))))));
    let var_3 = var_2.d.yy;
    return -1099f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(arg_0.c + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_2 * arg_0.e.c), 1f, _wgslsmith_f_op_f32(ceil(arg_1.c)), _wgslsmith_div_f32(arg_1.c, arg_1.c))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(u_input.c.zz, arg_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, -2399f, arg_1.c, arg_0.e.c) + var_0.a), vec3<bool>(arg_0.d.x, true, arg_0.d.x), Struct_1(arg_0.b.a, arg_1.b, 1071f)))).x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.c) - _wgslsmith_f_op_f32(236f * _wgslsmith_div_f32(arg_0.b.c, var_0.a.x))))), -1268f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_0.c))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1429f, 1620f, var_1.x, 696f) - arg_0.c)))))));
    var var_3 = Struct_1(24258i, ~arg_0.e.b, 336f);
    global0 = array<vec2<u32>, 20>();
    return Struct_1(arg_0.b.a ^ -22147i, vec2<u32>(_wgslsmith_add_u32(var_3.b.x & (var_3.b.x ^ 81529u), ~4294967295u), arg_1.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 * -1815f)))))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = func_4(Struct_2(firstLeadingBit(vec2<u32>(u_input.a.x, ~0u)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d, u_input.d), firstTrailingBit(u_input.d)), global0[_wgslsmith_index_u32(~(~u_input.a.x), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1440f - 303f) + _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1646f, 1146f, -340f, 152f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, 1272f, 769f, -398f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-956f, 1689f, 1551f, -842f))))), !vec3<bool>(false, arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x))), Struct_1(min(~u_input.d, u_input.d), _wgslsmith_add_vec2_u32(vec2<u32>(49798u, u_input.c.x), _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], vec2<u32>(0u, 4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1658f + 760f), 1000f))), Struct_1(-_wgslsmith_add_i32(-18240i << (0u % 32u), ~(-14623i)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 7941u, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a.x, 68014u)), ~vec3<u32>(u_input.a.x, 0u, u_input.b)), 88374u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-636f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-767f, -375f, arg_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1712f, 1f)))))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(151f, -1000f) - vec2<f32>(-914f, 1658f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.c, var_0.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(601f + 652f), func_4(Struct_2(vec2<u32>(44191u, 69140u), var_0, vec4<f32>(-464f, 1517f, 782f, var_0.c), arg_0.ywx, Struct_1(u_input.d, var_1.b, 736f)), var_0, 1000f).c))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1210f, -660f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), -260f)))));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, ~28383u, abs(1u), var_0.b.x & var_1.b.x), firstTrailingBit(u_input.c)), countOneBits(u_input.a)), ~var_0.b.x);
    let var_4 = -(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, 2147483647i, -47451i, u_input.d) >> (vec4<u32>(u_input.a.x, var_0.b.x, var_3, 1u) % vec4<u32>(32u)), -vec4<i32>(-5018i, u_input.d, var_0.a, var_1.a))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, var_1.c, var_1.c, var_1.c) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, 799f, var_0.c, 1235f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2265f, var_1.c, 1545f, var_2.x))), !arg_0)))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 20>();
    var var_0 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(-544f * -380f)), arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1377f * arg_1.a.x))), arg_1.a));
    var var_1 = Struct_1(-617i, ~_wgslsmith_mod_vec2_u32(abs(select(global0[_wgslsmith_index_u32(u_input.b, 20u)], vec2<u32>(4294967295u, u_input.a.x), true)), u_input.a.wy), var_0.a.x);
    return !(!select(vec3<bool>(all(vec2<bool>(true, false)), any(vec3<bool>(false, false, true)), u_input.d >= -29372i), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(2140f)))) * _wgslsmith_f_op_f32(f32(-1f) * -697f));
    var var_1 = var_0;
    var var_2 = vec3<i32>(u_input.d, 11880i, u_input.d);
    global0 = array<vec2<u32>, 20>();
    let var_3 = select(func_5(_wgslsmith_clamp_vec3_i32(~max(vec3<i32>(u_input.d, -2147483647i, var_2.x), vec3<i32>(var_2.x, -1i, 61381i)), ~vec3<i32>(-7798i, 46149i, 6173i) >> (vec3<u32>(u_input.b, u_input.a.x, 0u) % vec3<u32>(32u)), ~(-vec3<i32>(u_input.d, 9016i, u_input.d))), func_1(vec4<bool>(true, true, true, true))), select(func_5(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -1905i, u_input.d), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-485f, -2162f, var_0, var_0)))), !vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, false, false))), true), all(func_5(~vec3<i32>(var_2.x, 16957i, -11576i), func_1(vec4<bool>(true, false, false, false)))));
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1436f, var_0)) + _wgslsmith_f_op_f32(-var_0)))));
}

