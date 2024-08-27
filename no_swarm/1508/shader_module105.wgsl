struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4) -> bool {
    var var_0 = all(select(vec4<bool>(true, !arg_0.b.a, true, ~u_input.d < -22406i), !vec4<bool>(arg_0.b.a, arg_0.b.a, true, arg_0.b.a), true));
    return true;
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    var var_0 = -1014f;
    var_0 = -1119f;
    var_0 = _wgslsmith_f_op_f32(ceil(335f));
    var_0 = -1243f;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-898f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -811f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -320f) + -790f)), 211f, 1039f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, 540f), _wgslsmith_f_op_f32(-165f - 1009f), -1039f, -1873f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -642f, -426f, -1000f) + vec4<f32>(-1190f, 991f, -1150f, -347f)))))));
    return all(vec3<bool>(arg_0, select(true, func_2(Struct_4(20631u, Struct_1(arg_0, arg_1, vec3<i32>(-12163i, u_input.e.x, u_input.c.x), vec2<i32>(14511i, 2147483647i), arg_1))), true != any(vec2<bool>(arg_0, false))), all(vec4<bool>(true, true, u_input.d != u_input.c.x, arg_0))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = true;
    var var_1 = Struct_5(arg_0.yww);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(632f - 1649f))), _wgslsmith_f_op_f32(var_1.a.x - 729f)), -403f))));
    return Struct_3(arg_3);
}

fn func_1(arg_0: vec4<i32>, arg_1: f32, arg_2: u32, arg_3: vec3<i32>) -> bool {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1443f, -809f, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(-214f, arg_1, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2571f, 687f, 1755f, arg_1))), !select(true, func_2(Struct_4(0u, Struct_1(true, 4294967295u, arg_3, u_input.e.yx, 0u))), true))), 2129i, arg_2, Struct_1(!select(func_3(true, 4294967295u), any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true))), ~(_wgslsmith_sub_u32(32788u, arg_2) ^ arg_2), vec3<i32>(14154i, _wgslsmith_div_i32(-2147483647i, 1i), -11018i), vec2<i32>(-1i) * -(~u_input.e.xz), 4294967295u));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-316f, arg_1, 446f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, -730f, -1662f)))))));
    var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -517f, _wgslsmith_div_f32(arg_1, 942f)) + _wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(exp2(var_1.a)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.a, var_1.a), var_1.a, select(vec3<bool>(var_0.a.a, true, var_0.a.a), vec3<bool>(true, var_0.a.a, var_0.a.a), vec3<bool>(false, var_0.a.a, true)))))))));
    var var_2 = var_0.a.d.x;
    let var_3 = Struct_2(countOneBits(_wgslsmith_mult_vec3_u32((vec3<u32>(var_0.a.e, var_0.a.e, 16636u) & vec3<u32>(arg_2, var_0.a.e, 4294967295u)) & vec3<u32>(u_input.b.x, 4294967295u, 90197u), vec3<u32>(reverseBits(arg_2), 0u, ~1173u))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, -551f, var_1.a.x, var_1.a.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -772f, 278f) - vec4<f32>(1498f, -1798f, 1000f, var_1.a.x))), -1i | _wgslsmith_div_i32(abs(arg_3.x), u_input.d), _wgslsmith_dot_vec2_u32(~vec2<u32>(10222u, 4294967295u) << (u_input.b % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.a, u_input.b) & (u_input.b & u_input.b)), func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 991f, arg_1, 383f)), vec4<f32>(var_1.a.x, arg_1, var_1.a.x, 1711f))), ~func_4(vec4<f32>(1000f, var_1.a.x, arg_1, arg_1), 24212i, u_input.b.x, var_0.a).a.c.x, ~(~4294967295u), var_0.a).a).a);
    return _wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) + -1505f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(920f + var_1.a.x)))) < -1135f;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.b, arg_2.b.b, 2685u, 64234u), vec4<u32>(2370u, u_input.a.x, arg_1.a.x, 0u)), 21906u) ^ (0u >> (~arg_1.b.b % 32u));
    let var_1 = ~(~(~vec4<u32>(u_input.a.x, func_4(vec4<f32>(-1048f, -787f, 155f, 852f), arg_1.b.d.x, u_input.b.x, arg_1.b).a.e, ~0u, _wgslsmith_dot_vec3_u32(arg_2.a, arg_2.a))));
    var_0 = 75760u;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(308f, _wgslsmith_f_op_f32(-1000f - 373f), true))) - 642f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(min(513f, -1607f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-2132f)))))));
    var var_3 = _wgslsmith_div_vec3_u32(~var_1.zzx, ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, u_input.b.x, 1u), vec3<u32>(var_1.x, arg_2.a.x, 61530u), ~arg_1.a)));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<bool>((-u_input.e.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -45351i), vec2<i32>(u_input.d, u_input.e.x))) == u_input.c.x, true, func_1(-select(u_input.c, u_input.e, true), 745f, ~_wgslsmith_dot_vec2_u32(u_input.b, u_input.a), vec3<i32>(1i, reverseBits(u_input.d), u_input.c.x)), true), Struct_2(firstLeadingBit(vec3<u32>(u_input.b.x ^ 1u, ~u_input.a.x, ~u_input.b.x)), Struct_1(false, 0u, vec3<i32>(~u_input.d, _wgslsmith_mod_i32(65096i, u_input.c.x), _wgslsmith_div_i32(u_input.e.x, u_input.e.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, 1i), vec2<i32>(u_input.e.x, u_input.c.x)) & u_input.e.wx, _wgslsmith_mod_u32(1u, ~u_input.a.x))), Struct_2(countOneBits(_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 0u, u_input.b.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 26914u, u_input.a.x), vec3<u32>(u_input.b.x, 0u, u_input.a.x)))), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -317f, 1000f, -353f) * vec4<f32>(315f, -1061f, 339f, -504f))), _wgslsmith_sub_i32(u_input.d, 1i & u_input.d), ~9016u, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 301f, 183f, -247f) + vec4<f32>(1134f, -1277f, -831f, -555f)), ~u_input.d, 26608u, Struct_1(true, u_input.b.x, u_input.e.yyx, vec2<i32>(u_input.c.x, u_input.d), u_input.b.x)).a).a));
    let var_1 = 0i;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-697f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, -2357f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2427f, -956f) - vec2<f32>(-1037f, -1033f)))))));
    var var_3 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~1u, u_input.a.x & 56796u, 58579u), ~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e, u_input.a.x, u_input.b.x), vec3<u32>(var_0.b, var_0.e, 753u))), max(~(~vec3<u32>(70959u, 15952u, 4294967295u)), vec3<u32>(1u, 1u, 1u))), func_5(select(!select(vec4<bool>(false, var_0.a, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), var_0.a), vec4<bool>(any(vec2<bool>(true, var_0.a)), any(vec4<bool>(true, var_0.a, var_0.a, var_0.a)), true, 0i == u_input.d), !(!vec4<bool>(true, var_0.a, var_0.a, var_0.a))), Struct_2(~_wgslsmith_clamp_vec3_u32(vec3<u32>(13813u, 42871u, 0u), vec3<u32>(var_0.b, 21378u, var_0.e), vec3<u32>(37292u, 64600u, 4294967295u)), func_5(!vec4<bool>(false, false, true, var_0.a), Struct_2(vec3<u32>(u_input.a.x, 41099u, var_0.b), Struct_1(var_0.a, 16918u, var_0.c, vec2<i32>(-10426i, -26769i), 4294967295u)), Struct_2(vec3<u32>(u_input.b.x, var_0.b, 4294967295u), Struct_1(var_0.a, var_0.b, u_input.e.www, u_input.c.xy, 41352u)))), Struct_2(vec3<u32>(var_0.b << (u_input.a.x % 32u), u_input.b.x, ~var_0.e), func_5(vec4<bool>(var_0.a, true, true, var_0.a), Struct_2(vec3<u32>(var_0.b, 74407u, 42104u), Struct_1(var_0.a, 1u, u_input.e.xxw, var_0.c.zx, u_input.b.x)), Struct_2(vec3<u32>(109525u, u_input.a.x, var_0.b), Struct_1(false, u_input.b.x, vec3<i32>(var_0.c.x, -44313i, var_1), u_input.c.wz, var_0.b))))));
    var var_4 = u_input.b.x;
    let var_5 = Struct_2(_wgslsmith_mult_vec3_u32(~vec3<u32>(36839u, var_3.b.e, var_3.b.e) ^ var_3.a, select(vec3<u32>(var_0.e >> (2514u % 32u), ~var_0.e, var_0.b << (96147u % 32u)), ~(~vec3<u32>(100139u, var_0.e, var_3.a.x)), vec3<bool>(false, !var_0.a, var_3.b.a))), Struct_1(false, 42405u, ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(731i, -8739i, u_input.c.x), vec3<i32>(u_input.e.x, var_3.b.c.x, 2147483647i), var_3.b.c)), _wgslsmith_clamp_vec2_i32(-u_input.c.yz, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -6816i), firstLeadingBit(vec2<i32>(u_input.e.x, 2677i))), -u_input.e.xx >> (reverseBits(u_input.b) % vec2<u32>(32u))), 52134u));
    let x = u_input.a;
    s_output = StorageBuffer(1332f, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 26099i, 28828i, var_0.d.x) << ((abs(vec4<u32>(var_5.a.x, var_5.a.x, var_5.a.x, var_0.e)) | ~vec4<u32>(45785u, u_input.a.x, var_0.b, 0u)) % vec4<u32>(32u)), vec4<i32>(-1i, _wgslsmith_mod_i32(1i, -45425i), -16517i, var_5.b.d.x)), var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(502f, 1000f, 481f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 1254f, 145f), vec3<f32>(707f, var_2.x, var_2.x), var_3.b.a)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 740f, -904f)))))), u_input.e.xyx);
}

