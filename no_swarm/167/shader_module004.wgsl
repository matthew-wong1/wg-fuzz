struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: Struct_4,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = 107582u ^ u_input.d.x;
    let var_1 = u_input.a.x;
    var var_2 = _wgslsmith_mult_i32(1i >> (var_1 % 32u), 2147483647i);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f + 1803f)) + -1177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1093f + arg_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-477f, -125f)))))));
    let var_4 = Struct_3(~_wgslsmith_div_i32(0i, 3168i), 35350i, (arg_0.e >> (_wgslsmith_sub_vec3_u32(u_input.d.zzz, vec3<u32>(0u, var_1, 4294967295u)) % vec3<u32>(32u))) | arg_0.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1972f, arg_1.a.a, 589f) + vec4<f32>(arg_1.a.a, arg_1.a.a, 728f, 1080f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1189f, arg_0.d.a, arg_0.c.a.a, 635f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1012f, var_3.x, -694f, arg_1.a.a) - vec4<f32>(-500f, arg_0.d.a, 1000f, -1156f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(787f, arg_1.a.a, var_3.x, -540f), vec4<f32>(arg_0.d.a, arg_1.a.a, 224f, arg_1.a.a), arg_0.c.a.b))))));
}

fn func_2(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_div_vec3_u32(arg_0.b, u_input.a), arg_0.c.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(836f, 753f, -187f), vec3<f32>(926f, 2440f, arg_0.d.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1198f, -873f, 1088f))) * vec3<f32>(_wgslsmith_f_op_f32(-1067f - -1159f), _wgslsmith_f_op_f32(-arg_0.c.a.a), _wgslsmith_f_op_f32(-var_0.b.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, arg_0.d.a, 1942f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-431f, -1156f, var_0.b.a) - vec3<f32>(506f, -598f, var_0.b.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, -967f, 1000f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.d.a)), var_0.b.a, 1054f)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.d.a, -1549f, arg_0.d.a, 1473f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, 182f, var_1.x, -572f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_0.b.a, var_1.x, var_1.x), vec4<f32>(var_0.b.a, var_1.x, -258f, var_0.b.a), var_0.b.b))), _wgslsmith_f_op_vec4_f32(func_3(Struct_5(u_input.d.x, var_0.a, Struct_4(arg_0.c.a), var_0.b, vec3<i32>(u_input.e, 2147483647i, 1i)), Struct_4(var_0.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.a, var_1.x, var_1.x, -925f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1698f, -875f, 1176f, 515f) - vec4<f32>(418f, var_1.x, 705f, 459f)))))));
    let var_3 = arg_0.c.a.a;
    let var_4 = ~select(_wgslsmith_div_vec2_u32(u_input.a.yz, vec2<u32>(select(u_input.c, 1341u, true), 25202u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~var_0.a.x, u_input.c), ~(~vec2<u32>(arg_0.a, 0u)), arg_0.b.yx), all(vec4<bool>(var_0.b.b, false, false, any(vec3<bool>(arg_0.d.b, arg_0.d.b, false)))));
    return vec4<bool>(!((_wgslsmith_f_op_f32(arg_0.d.a * var_0.b.a) <= _wgslsmith_div_f32(var_1.x, var_3)) || !(78294u > var_4.x)), true, arg_0.c.a.b, var_0.b.b);
}

fn func_1(arg_0: Struct_5) -> vec4<f32> {
    var var_0 = Struct_1(1126f, false);
    var var_1 = countOneBits(_wgslsmith_clamp_vec2_i32(~vec2<i32>(min(u_input.b.x, -27273i), -1i), -(~u_input.b) >> (arg_0.b.xx % vec2<u32>(32u)), -firstTrailingBit(select(arg_0.e.yy, vec2<i32>(-1i, -33827i), true))));
    var_1 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-(i32(-1i) * -53426i), min(64039i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.e.x, 28114i, u_input.e, -1i), vec4<i32>(2147483647i, u_input.b.x, 29305i, u_input.e))), ~(-1i)), _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_0.e.yx, u_input.b), arg_0.e.yx)), i32(-1i) * -2147483647i);
    var_1 = ~vec2<i32>(u_input.e, _wgslsmith_mult_i32(1i, var_1.x));
    var_1 = vec2<i32>(1i, -7527i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.a) - var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1796f)), _wgslsmith_f_op_f32(-arg_0.c.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1210f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 2100f, -374f, 208f), vec4<f32>(-623f, var_0.a, -1432f, -689f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, 783f, -664f) * vec4<f32>(arg_0.d.a, -622f, 735f, var_0.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, 495f, arg_0.d.a, var_0.a), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(296f, -744f, arg_0.c.a.a, arg_0.d.a))), select(vec4<bool>(var_0.b, true, false, false), vec4<bool>(arg_0.c.a.b, false, true, arg_0.d.b), vec4<bool>(arg_0.d.b, arg_0.c.a.b, arg_0.d.b, var_0.b))))), func_2(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_div_vec4_i32(-vec4<i32>(countOneBits(-2147483647i), -u_input.e, u_input.e | u_input.e, 2147483647i), min((vec4<i32>(u_input.b.x, -1i, 0i, 0i) & vec4<i32>(u_input.e, -1i, 1772i, u_input.e)) & ~vec4<i32>(u_input.e, 11371i, -1i, u_input.e), abs(vec4<i32>(u_input.e, -5809i, u_input.e, u_input.e))));
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.c, 77820u, 4294967295u))), max(4294967295u, 8847u));
    var var_2 = vec4<bool>(true, !any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))) | (any(vec4<bool>(false, false, true, true)) && (firstLeadingBit(0u) != u_input.a.x)), !(!(any(vec3<bool>(false, true, true)) && true)), !(false || all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(435f, -1499f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1786f * -2943f), _wgslsmith_f_op_f32(f32(-1f) * -265f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + 326f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -227f, 252f, 122f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1387f, -1675f, -128f, 234f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-633f, 860f, 1031f, 297f), vec4<f32>(352f, 1570f, -1740f, 314f))) + vec4<f32>(636f, -1244f, -138f, 2179f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_5(4294967295u, u_input.d.yyy, Struct_4(Struct_1(336f, false)), Struct_1(1220f, true), var_0.yyz)))))));
    let var_4 = Struct_2(~u_input.d.ywz, Struct_1(_wgslsmith_f_op_vec4_f32(func_3(Struct_5(abs(39058u), _wgslsmith_add_vec3_u32(u_input.d.xwx, u_input.a), Struct_4(Struct_1(var_3.x, true)), Struct_1(1470f, var_2.x), _wgslsmith_clamp_vec3_i32(var_0.xyw, var_0.zyw, var_0.zzz)), Struct_4(Struct_1(-1388f, var_2.x)))).x, var_2.x));
    var var_5 = _wgslsmith_dot_vec2_u32(var_4.a.zz, var_4.a.xz);
    var var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, 423f, -315f, -166f), vec4<f32>(-348f, 1180f, -1203f, -1548f), vec4<bool>(false, var_2.x, var_4.b.b, var_4.b.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_3, vec4<f32>(var_3.x, 1604f, 219f, -772f), false))), !vec4<bool>(var_2.x, var_2.x, var_2.x, false))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_3, _wgslsmith_f_op_vec4_f32(select(var_3, var_3, vec4<bool>(var_4.b.b, true, false, var_2.x))), vec4<bool>(false, var_2.x, true, var_4.b.b)))))), _wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, var_4.b.a, 2592f, 1000f))))), u_input.a.xx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_5(u_input.c, vec3<u32>(var_1, var_1, u_input.c), Struct_4(Struct_1(286f, true)), Struct_1(var_4.b.a, var_4.b.b), vec3<i32>(var_0.x, -1i, u_input.b.x)), Struct_4(var_4.b))).xzy)) + var_3.wzz));
}

