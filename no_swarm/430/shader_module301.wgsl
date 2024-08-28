struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1356f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + 1000f) * _wgslsmith_f_op_f32(abs(2047f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0)), arg_0)))));
    var var_1 = arg_1.a.x & (arg_1.a.x == !any(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)));
    var_1 = _wgslsmith_div_u32(~52649u, 1321u) < u_input.b.x;
    let var_2 = 4294967295u;
    var var_3 = ~max(-5503i, u_input.a.x);
    return u_input.c;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f * -2057f)), _wgslsmith_f_op_f32(step(-1000f, -611f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(770f, _wgslsmith_f_op_f32(982f + -454f)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(872f, 633f))))))));
    var var_1 = vec3<i32>(-2147483647i, -11556i, max(0i, -25020i));
    var_1 = vec3<i32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), Struct_1(arg_1.b)), -min(abs(arg_1.a.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.x, 0i), var_1.x)), ~(~0i));
    var var_2 = arg_1;
    var var_3 = vec3<i32>(~var_2.a.x, ~(~(u_input.a.x & arg_1.a.x)), 17765i);
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-914f, var_0.x, 1f, var_0.x), vec4<f32>(_wgslsmith_div_f32(1000f, 634f), -432f, 1000f, -763f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1009f, var_0.x, -580f) * vec4<f32>(-721f, 1530f, var_0.x, 479f)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(924f * var_0.x), -1147f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, abs(abs(_wgslsmith_mod_u32(33636u, 22035u))), u_input.b.x), vec3<u32>(u_input.b.x, ~abs(max(u_input.b.x, 33028u)), 0u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -162f)) * arg_0.x))));
    var var_2 = false;
    var_2 = false;
    var var_3 = (i32(-1i) * -arg_1.c.x) <= 1i;
    return !arg_1.b;
}

fn func_1() -> vec4<bool> {
    let var_0 = Struct_1(select(!vec3<bool>(u_input.b.x < 87u, true, false), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(false, true), Struct_2(vec3<i32>(1i, -1i, 15621i), vec3<bool>(false, true, true), vec2<i32>(-34056i, u_input.c), u_input.b.x, vec3<u32>(u_input.b.x, u_input.b.x, 0u)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2215f, -484f, 1558f, 306f) - vec4<f32>(1249f, 600f, -337f, 346f))), Struct_2(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, -1i, u_input.d)), vec3<bool>(true, true, false), vec2<i32>(55486i, 50224i), u_input.b.x, reverseBits(vec3<u32>(0u, u_input.b.x, 0u)))), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-562f, -1639f, 2596f, 1124f))) + _wgslsmith_div_vec4_f32(vec4<f32>(952f, -447f, 719f, 1000f), vec4<f32>(1309f, 1000f, 1791f, -880f))), Struct_2(~vec3<i32>(30314i, -27649i, u_input.c), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), u_input.a.zz << (vec2<u32>(48669u, u_input.b.x) % vec2<u32>(32u)), 0u, ~vec3<u32>(u_input.b.x, 47524u, 85286u)))));
    var var_1 = Struct_1(select(func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(592f, 754f, 1043f, 2142f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1119f, 849f, -1046f, 186f))), !vec4<bool>(var_0.a.x, true, var_0.a.x, false))), Struct_2(vec3<i32>(1i, 2842i, 24488i) & u_input.a, vec3<bool>(var_0.a.x, false, false), vec2<i32>(1i, u_input.d) | vec2<i32>(14010i, 29003i), u_input.b.x, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)))), func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(206f, -366f, 1000f, -2939f) - vec4<f32>(-398f, -1000f, 986f, 490f)))), Struct_2(vec3<i32>(1i, u_input.d, -1068i) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), !var_0.a, abs(u_input.a.yx), u_input.b.x, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 34490u, u_input.b.x), vec3<u32>(8519u, u_input.b.x, 0u)))), true));
    let var_2 = firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.d, -2147483647i) ^ vec4<i32>(-8021i, 33962i, u_input.d, 2147483647i), ~vec4<i32>(u_input.c, -38815i, 1i, 2147483647i)), ~71694i << (~u_input.b.x % 32u), _wgslsmith_mod_i32(select(2147483647i, u_input.d, var_1.a.x), -32447i))));
    let var_3 = vec4<i32>(~_wgslsmith_clamp_i32(min(93655i, -1i), ~1i, _wgslsmith_clamp_i32(u_input.d, -var_2.x, 1i)), -func_3(_wgslsmith_f_op_f32(1041f + 148f), var_0), _wgslsmith_dot_vec2_i32(abs(countOneBits(vec2<i32>(50489i, -1i))), u_input.a.xz), -11546i);
    var var_4 = _wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(var_0.a.x, any(vec4<bool>(var_0.a.x, var_0.a.x, true, false))), Struct_2(~(~var_3.yxz), select(!vec3<bool>(true, var_0.a.x, true), select(var_0.a, var_1.a, var_1.a.x), select(var_0.a.x, var_0.a.x, var_0.a.x)), vec2<i32>(-5523i & u_input.a.x, select(81381i, 2147483647i, false)), min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, 11981u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), ~countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))))).x);
    return select(select(!(!vec4<bool>(var_0.a.x, false, false, var_1.a.x)), !select(select(vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(var_0.a.x, var_1.a.x, true, false), var_0.a.x), !vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(var_1.a.x, var_0.a.x, false, var_0.a.x)), select(select(select(vec4<bool>(false, var_0.a.x, false, var_1.a.x), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), var_1.a.x), !vec4<bool>(true, var_1.a.x, var_0.a.x, false), true)), select(vec4<bool>(!(!var_1.a.x), true, var_1.a.x, true), vec4<bool>(true, var_2.x != _wgslsmith_sub_i32(var_2.x, var_2.x), !(var_1.a.x || var_0.a.x), false), false), !vec4<bool>(true, true, var_0.a.x, var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, all(vec3<bool>(true, true, any(vec4<bool>(false, true, false, true)))) | true, any(select(func_1(), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), firstLeadingBit(abs(u_input.b.x)) <= abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(28837u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, 16845u, 54161u)))));
    var_0 = select(!select(!(!vec4<bool>(var_0.x, true, var_0.x, false)), select(func_1(), vec4<bool>(true, false, true, true), true), !(!vec4<bool>(var_0.x, false, var_0.x, false))), vec4<bool>(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), -39938i < select(-u_input.c, u_input.d, true), (abs(u_input.b.x) >= 0u) || var_0.x, false), true);
    var_0 = !(!vec4<bool>(true, true, var_0.x, !var_0.x));
    var_0 = vec4<bool>(var_0.x, true, all(vec4<bool>(all(var_0.xy), select(false, var_0.x, var_0.x), any(var_0.ww), var_0.x)) && (_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<bool>(var_0.x, var_0.x), Struct_2(vec3<i32>(-74403i, u_input.c, u_input.d), vec3<bool>(var_0.x, true, var_0.x), vec2<i32>(u_input.a.x, u_input.d), u_input.b.x, vec3<u32>(u_input.b.x, 37423u, u_input.b.x)))).x - -307f) == _wgslsmith_f_op_f32(abs(1423f))), !var_0.x);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(u_input.d << (1u % 32u), -(~(i32(-1i) * -28817i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-608f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1235f + 1753f)))), abs(u_input.c));
}

