struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1485f, -434f, 1980f, -963f), vec4<f32>(914f, -603f, 488f, 1107f), vec4<f32>(969f, 802f, -1000f, 2244f), vec4<f32>(1000f, 283f, 2674f, -146f), vec4<f32>(1075f, -1000f, 994f, -789f), vec4<f32>(-577f, 414f, 110f, 484f), vec4<f32>(1188f, -242f, 116f, -346f), vec4<f32>(1310f, 1477f, 689f, -231f), vec4<f32>(-2106f, -436f, -455f, 593f), vec4<f32>(590f, 1000f, 507f, -1000f), vec4<f32>(-1007f, 672f, 1304f, -1018f), vec4<f32>(-825f, 1000f, 1739f, -924f), vec4<f32>(-1676f, -346f, -1000f, 669f), vec4<f32>(-1398f, -508f, 188f, -606f), vec4<f32>(1000f, 438f, -1000f, -567f), vec4<f32>(473f, 1430f, 707f, -1098f), vec4<f32>(-592f, 208f, 1989f, 144f), vec4<f32>(-425f, -969f, -177f, -314f), vec4<f32>(-1825f, -895f, -836f, -936f), vec4<f32>(259f, 308f, 562f, -1165f), vec4<f32>(1000f, 1000f, 183f, 907f), vec4<f32>(-1000f, 834f, -1000f, -827f), vec4<f32>(-1000f, -917f, -313f, 693f), vec4<f32>(428f, 489f, -1000f, 1000f), vec4<f32>(-502f, -145f, 960f, -1444f), vec4<f32>(-316f, 289f, -1499f, -226f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> vec4<i32> {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var var_0 = Struct_1(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32((arg_1.x & 26530u) << (~arg_1.x % 32u), countOneBits(arg_1.x & arg_1.x)) ^ _wgslsmith_dot_vec4_u32(~(~arg_1), arg_1), 26u)], select(vec3<bool>(_wgslsmith_add_i32(19304i, u_input.a.x) == u_input.a.x, select(true, arg_0, arg_0 | true), any(vec3<bool>(true, false, arg_0))), !vec3<bool>(true, u_input.a.x > u_input.a.x, false), false), !all(vec4<bool>(arg_0, true, select(true, false, false), arg_0)), -(~(~select(vec4<i32>(16500i, u_input.a.x, -2147483647i, 12620i), vec4<i32>(-18801i, -2147483647i, u_input.a.x, u_input.a.x), vec4<bool>(arg_0, arg_0, true, true)))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~arg_1.wy, vec2<u32>(~4294967295u, ~0u)), ~(~(~4294967295u))), arg_1.x);
    var var_2 = var_0.e.x;
    return vec4<i32>(u_input.a.x, -1i, var_0.e.x, -1i);
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var var_0 = 0u;
    var var_1 = Struct_3(Struct_2(1i, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), arg_0.x), arg_0.zx)), u_input.a.x));
    var_1 = Struct_3(Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 43036i, var_1.a.a), vec4<i32>(var_1.a.a, -50355i, var_1.a.a, -16671i)), ~(-13141i), max(-2147483647i, u_input.a.x), var_1.a.c >> (0u % 32u)), firstTrailingBit(func_3(false, vec4<u32>(4294967295u, 0u, 1u, 0u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, arg_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(var_1.a.b.x - 644f))), 1587i));
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(-var_1.a.b.x)), var_1.a.b.x))), select(select(vec3<bool>(false, false, all(vec2<bool>(true, false))), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), false), !any(vec2<bool>(false, false)) & true), any(vec2<bool>(true, true)), ~(~abs(~vec4<i32>(var_1.a.a, u_input.a.x, 22711i, 0i))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_3 {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    var var_0 = Struct_2(abs(select(abs(6189i), _wgslsmith_sub_i32(18161i, 0i), arg_1) >> (~_wgslsmith_mult_u32(13674u, 9988u) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1268f, arg_2.b.x))))) - _wgslsmith_div_vec2_f32(vec2<f32>(353f, arg_0.b.x), vec2<f32>(-1152f, -326f))) * arg_0.b.xz), arg_2.e.x);
    return Struct_3(Struct_2(func_3(all(vec3<bool>(arg_2.d, true, true)), vec4<u32>(1u, 1u, 1u, 1u)).x, vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x * 1013f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-389f * arg_0.b.x), -589f)), 0i));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> vec3<f32> {
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    global0 = array<vec4<f32>, 26>();
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b.x, arg_1.a.b.x, 1000f, 919f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(635f, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x)))))), !all(vec3<bool>(true, true, true)), func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(0u), abs(1u)), 26u)]));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.b.x - -585f), _wgslsmith_f_op_f32(-arg_1.a.b.x)))), _wgslsmith_f_op_f32(floor(var_0.a.b.x)), arg_1.a.b.x) + vec3<f32>(136f, var_0.a.b.x, arg_1.a.b.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1561f, arg_2, arg_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_2, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_0.x, arg_2))))), _wgslsmith_f_op_vec3_f32(func_5(~1u, func_4(func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, arg_2, arg_0.x), vec4<f32>(arg_0.x, -1184f, arg_0.x, arg_0.x), arg_1.x))), arg_1.x, Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_0.x, -481f, -633f) - vec4<f32>(1398f, -888f, -186f, -139f)), func_2(vec4<f32>(-755f, 289f, 219f, arg_2)).c, true, ~vec4<i32>(u_input.a.x, -23519i, u_input.a.x, -65334i))), _wgslsmith_div_u32(abs(min(33486u, 0u)), ~(~21557u)), -u_input.a.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1253f, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -256f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1727f, 720f, arg_1.x)))) < -388f;
    global0 = array<vec4<f32>, 26>();
    let var_2 = Struct_2(_wgslsmith_add_i32(func_3(true, vec4<u32>(36453u, max(0u, 4294967295u), abs(0u), _wgslsmith_mod_u32(1u, 46430u))).x, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 24764i), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, -52329i)))), arg_0, max(u_input.a.x, select(-firstLeadingBit(u_input.a.x), 5987i, _wgslsmith_f_op_f32(round(var_0.x)) != _wgslsmith_f_op_f32(-1009f - 116f))));
    let var_3 = firstLeadingBit(2147483647i);
    return !any(arg_1) || true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-335f, 286f)), _wgslsmith_f_op_f32(f32(-1f) * -314f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1102f, -1023f)), -316f)), 2147483647i);
    var var_1 = Struct_2(u_input.a.x, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), 14740i);
    var var_2 = Struct_1(firstLeadingBit(_wgslsmith_mult_i32(var_1.a, _wgslsmith_add_i32(56465i, 2754i))) >= -2147483647i, global0[_wgslsmith_index_u32(0u, 26u)], select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, all(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true), func_1(var_0.b, vec3<bool>(false, false, true), var_1.b.x) || true), !func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -264f, 684f, var_1.b.x))).c), all(vec3<bool>(true, true, true)), vec4<i32>(u_input.a.x, -1i, _wgslsmith_div_i32(-(~u_input.a.x), var_0.a), u_input.a.x));
    var var_3 = Struct_2(var_2.e.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.x, -1394f))), var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), var_3.c, ~vec3<u32>(~4294967295u, 0u, _wgslsmith_mult_u32(1u, ~1u)), _wgslsmith_mult_i32(~var_2.e.x, var_0.a));
}

