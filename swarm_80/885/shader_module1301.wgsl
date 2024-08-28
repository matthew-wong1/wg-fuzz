struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = vec3<i32>(_wgslsmith_mod_i32(u_input.c, _wgslsmith_sub_i32(min(-arg_0.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.a.x, 31760i), u_input.a)), 0i)), u_input.c, _wgslsmith_mod_i32(-firstTrailingBit(firstLeadingBit(u_input.c)), arg_0.c));
    let var_1 = Struct_1(true, vec2<bool>(arg_0.b.x, arg_0.b.x), max(abs(_wgslsmith_mod_i32(-20185i, abs(2147483647i))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a & vec3<i32>(u_input.e, 2147483647i, 0i)), u_input.e)), 4294967295u, ~vec4<u32>(abs(_wgslsmith_mod_u32(4294967295u, u_input.b.x)), ~(~arg_0.e.x), ~min(arg_0.d, 4294967295u), countOneBits(min(30292u, u_input.d))));
    let var_2 = Struct_1(arg_0.b.x, arg_0.b, 2147483647i, abs(var_1.d), vec4<u32>(u_input.b.x, countOneBits(~arg_0.e.x), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 101517u), var_1.e.zz)), var_1.e.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -677f);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = vec2<u32>(~12088u, 87291u);
    var var_1 = u_input.a.xx;
    var var_2 = reverseBits(-vec4<i32>(-13356i, 2147483647i, 32491i, 2147483647i) ^ ~(-vec4<i32>(18268i, 19131i, -9060i, u_input.e))) ^ ~vec4<i32>(_wgslsmith_mod_i32(abs(-10699i), u_input.c), ~(u_input.a.x ^ arg_3.c), -2147483647i, _wgslsmith_mult_i32(var_1.x, select(u_input.c, u_input.c, arg_3.a)));
    var_1 = -var_2.xy;
    var var_3 = select(select(vec4<bool>(arg_3.a, !(arg_3.a | arg_3.a), arg_3.b.x, true), select(vec4<bool>(true, any(vec3<bool>(true, false, false)), all(vec4<bool>(arg_3.a, arg_3.b.x, arg_3.b.x, arg_3.a)), false), !(!vec4<bool>(true, arg_3.b.x, false, true)), select(!vec4<bool>(true, false, true, arg_3.a), select(vec4<bool>(true, arg_3.a, false, false), vec4<bool>(false, arg_3.a, arg_3.a, false), vec4<bool>(arg_3.a, false, arg_3.b.x, true)), select(vec4<bool>(arg_3.b.x, arg_3.b.x, arg_3.a, true), vec4<bool>(false, arg_3.b.x, arg_3.a, arg_3.b.x), vec4<bool>(arg_3.b.x, false, false, false)))), all(vec4<bool>(true, true, true, true)) == (_wgslsmith_f_op_f32(func_3(arg_3, 1u)) >= -1590f)), vec4<bool>(true, arg_3.a, arg_3.a, _wgslsmith_f_op_f32(abs(arg_0)) < arg_0), arg_3.b.x);
    return !(!(!var_3.zwx));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(arg_1.x + arg_2)), -834f)) * arg_2);
    var var_2 = -_wgslsmith_clamp_i32(-2147483647i, -1i, abs(_wgslsmith_clamp_i32(u_input.a.x | arg_0.x, min(arg_0.x, 4421i), -arg_0.x)));
    let var_3 = arg_0.xy;
    var_1 = -560f;
    return select(select(!vec3<bool>(true, true, any(vec3<bool>(false, false, false))), !func_4(_wgslsmith_f_op_f32(func_3(Struct_1(false, vec2<bool>(true, false), -38975i, u_input.b.x, vec4<u32>(39701u, u_input.d, u_input.d, 4294967295u)), u_input.d)), _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(u_input.d, u_input.d)), ~86240u, Struct_1(false, vec2<bool>(true, true), 1i, 1u, vec4<u32>(u_input.d, u_input.d, 9066u, u_input.b.x))), vec3<bool>(true, true, !(arg_0.x > 0i))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true), func_4(_wgslsmith_f_op_f32(func_3(Struct_1(true, vec2<bool>(false, false), 1i, u_input.b.x, vec4<u32>(u_input.b.x, 1u, u_input.d, 0u)), 21936u)), max(13670u, 4294967295u), u_input.d, Struct_1(false, vec2<bool>(true, false), arg_0.x, u_input.b.x, vec4<u32>(41619u, u_input.b.x, u_input.b.x, 0u))).x), select(false, true | (_wgslsmith_sub_u32(u_input.d, 107375u) > (u_input.d | 1u)), any(vec4<bool>(true, true, true, true))));
}

fn func_1(arg_0: i32) -> vec4<i32> {
    var var_0 = 0u;
    let var_1 = Struct_1(!all(select(func_2(vec3<i32>(u_input.e, -34338i, -1i), vec3<f32>(-1201f, -109f, -1291f), -826f), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true))), select(!select(func_2(u_input.a, vec3<f32>(-170f, 152f, -891f), -1956f).yz, func_2(vec3<i32>(6203i, -1i, arg_0), vec3<f32>(227f, 1100f, -379f), -861f).xz, true), vec2<bool>(true, true), select(func_2(vec3<i32>(-1i, -2147483647i, arg_0), vec3<f32>(-922f, -588f, 206f), -266f).x, all(vec2<bool>(true, true)), true)), _wgslsmith_sub_i32(arg_0, _wgslsmith_sub_i32(-2290i, abs(i32(-1i) * -1i))), ~select(_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(86898u, 1u)), 85909u, any(vec3<bool>(false, true, false))), ~(~abs(vec4<u32>(39199u, u_input.d, 0u, u_input.d))));
    var var_2 = var_1;
    var_2 = var_1;
    var var_3 = Struct_1(all(select(!select(vec4<bool>(var_2.a, var_2.b.x, false, true), vec4<bool>(var_2.a, var_1.b.x, var_1.b.x, var_2.a), vec4<bool>(var_2.b.x, var_1.b.x, false, true)), select(!vec4<bool>(false, var_2.a, true, var_1.b.x), select(vec4<bool>(var_2.b.x, true, var_1.a, true), vec4<bool>(var_1.b.x, var_2.a, var_2.a, true), var_1.b.x), select(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, true), vec4<bool>(true, false, true, var_1.b.x), vec4<bool>(false, var_1.b.x, true, true))), true)), select(vec2<bool>(all(vec4<bool>(true, true, var_1.b.x, var_1.a)), true), var_1.b, !func_2(firstLeadingBit(vec3<i32>(arg_0, 0i, arg_0)), vec3<f32>(646f, -1496f, 1170f), _wgslsmith_f_op_f32(1000f + -873f)).x), reverseBits(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a.x, 2147483647i, arg_0, var_1.c) | vec4<i32>(var_1.c, u_input.c, arg_0, var_2.c)), abs(vec4<i32>(2147483647i, 2147483647i, var_1.c, 1i)))), ~(~0u), ~(var_2.e ^ abs(var_2.e & vec4<u32>(u_input.b.x, 1u, var_2.e.x, u_input.b.x))));
    return ~vec4<i32>(-countOneBits(_wgslsmith_sub_i32(u_input.a.x, -23698i)), var_3.c, countOneBits(arg_0), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.c, -51668i, 2147483647i, 1i), vec4<i32>(2147483647i, 1i, 2147483647i, 66403i))), ~reverseBits(vec4<i32>(var_3.c, arg_0, var_2.c, 44016i))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> i32 {
    let var_0 = ~_wgslsmith_div_i32(max(i32(-1i) * -arg_0.x, max(arg_2, 23808i)), u_input.a.x);
    var var_1 = _wgslsmith_f_op_f32(func_3(arg_1, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, arg_1.e.x), 0u)));
    var var_2 = u_input.a.xx;
    let var_3 = arg_0;
    var_2 = ~vec2<i32>(1i, -2147483647i);
    return _wgslsmith_clamp_i32(-12222i, -var_0, arg_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = -vec4<i32>(-36358i, func_5(func_1(-u_input.e), Struct_1(true, vec2<bool>(true, true), _wgslsmith_div_i32(u_input.e, u_input.c), 1u, ~vec4<u32>(83141u, u_input.b.x, 42526u, 1u)), firstLeadingBit(max(17872i, 24321i)), vec2<i32>(_wgslsmith_mult_i32(-13418i, -1i), -9529i << (0u % 32u))), firstLeadingBit(_wgslsmith_mod_i32(30881i, _wgslsmith_mod_i32(u_input.a.x, u_input.e))), _wgslsmith_add_i32(func_5(vec4<i32>(5767i, u_input.e, 15407i, -2397i), Struct_1(true, vec2<bool>(false, false), u_input.c, u_input.b.x, vec4<u32>(12718u, var_0, 31918u, 15546u)), ~u_input.c, _wgslsmith_mod_vec2_i32(vec2<i32>(-11983i, u_input.a.x), vec2<i32>(u_input.e, u_input.c))), u_input.e));
    var var_2 = vec4<bool>(all(vec3<bool>(all(vec3<bool>(true, false, false)) | select(true, true, false), all(vec4<bool>(true, true, true, true)), true)), select(any(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, false, false, false)))), all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), true), all(vec4<bool>(true, true, false, true)), all(!vec3<bool>(any(vec3<bool>(false, true, false)), true, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(1911f, -530f)), -101f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1822f) * -725f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-623f, 2214f, -2539f, 831f), vec4<f32>(1000f, 542f, 337f, -535f), vec4<bool>(true, var_2.x, true, var_2.x)))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(598f, 310f, 868f, 914f)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -152f), -132f, _wgslsmith_div_f32(-1654f, -205f), _wgslsmith_f_op_f32(trunc(-1020f)))))));
    var var_4 = Struct_1(var_2.x, !var_2.wx, firstLeadingBit(0i), var_0, vec4<u32>(~25268u, ~(~4294967295u), ~4294967295u, u_input.b.x));
    var var_5 = var_4.d;
    var var_6 = _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, min(_wgslsmith_add_i32(7698i, var_1.x), 12122i), var_4.c), firstTrailingBit(var_1.xyz));
    var_6 = _wgslsmith_sub_i32(2147483647i, countOneBits(var_1.x));
    var_6 = firstTrailingBit(_wgslsmith_dot_vec2_i32(var_1.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(max(var_4.c, var_4.c), ~0i), -vec2<i32>(-1i, 2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_u32(reverseBits(reverseBits(var_4.e.zxy)), min(vec3<u32>(75120u, var_0, 4294967295u) | var_4.e.wyz, var_4.e.xww))));
}

