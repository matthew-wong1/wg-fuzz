struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    let var_0 = vec4<i32>(~25242i, arg_1.b.b.x << (~46450u % 32u), abs(~arg_1.b.b.x), 0i);
    var var_1 = Struct_1(arg_0.b.b.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.e + _wgslsmith_div_f32(-2689f, -663f))) >= -1143f, -1317f, ~firstTrailingBit(vec3<u32>(u_input.a.x | arg_1.b.a, _wgslsmith_sub_u32(74903u, 1u), abs(4294967295u))), i32(-1i) * -1i);
    let var_2 = ~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.a, ~select(arg_1.b.a, var_1.d.x, var_1.b), _wgslsmith_sub_u32(0u, min(4294967295u, arg_0.b.a))), var_1.d | _wgslsmith_mod_vec3_u32(reverseBits(var_1.d), vec3<u32>(arg_0.b.a, u_input.a.x, var_1.d.x)));
    var var_3 = arg_1.b.b.x;
    var var_4 = arg_0.b.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(220f)));
}

fn func_2() -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(589f, -1083f), Struct_2(5848u, vec3<i32>(2147483647i, 68154i, -1i), 0i, 920f, 1299f)), Struct_4(vec2<f32>(127f, 2620f), Struct_2(u_input.a.x, vec3<i32>(1i, -2147483647i, -34055i), -54746i, -1003f, 1722f)))), -538f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-193f, -102f)))))), Struct_2(~u_input.a.x, countOneBits(vec3<i32>(1i, 1i, 1i)), ~1i, _wgslsmith_f_op_f32(f32(-1f) * -1294f), 559f));
    let var_1 = var_0.b;
    var var_2 = abs(vec4<u32>(~(~u_input.a.x), var_1.a, ~(~var_1.a), var_0.b.a));
    var_2 = _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(~(~59544u), reverseBits(1u), select(~var_1.a, var_0.b.a, select(true, false, false)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(32056u, 46045u, u_input.a.x, 6054u), vec4<u32>(38301u, u_input.a.x, var_0.b.a, var_2.x)))), vec4<u32>(~(~var_1.a | abs(1u)), 86013u, 28995u, _wgslsmith_add_u32(var_0.b.a | 4294967295u, var_1.a)));
    var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -828f)) * _wgslsmith_f_op_vec2_f32(-var_0.a))), var_0.b);
    return any(vec4<bool>(var_1.d > 930f, any(vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, true)))), any(vec3<bool>(true, true, true)), var_0.b.c > var_0.b.c));
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = -967f;
    var var_1 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1356f - arg_0.x) - -1030f) > _wgslsmith_f_op_f32(f32(-1f) * -1357f)) & any(!vec3<bool>(true, func_2(), true));
    let var_2 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)));
    var_1 = any(vec3<bool>(all(select(vec3<bool>(true, var_2, true), vec3<bool>(var_2, true, false), select(vec3<bool>(var_2, false, true), vec3<bool>(false, false, var_2), true))), false, true));
    var_1 = var_2 || (((_wgslsmith_clamp_i32(2147483647i, -66557i, 0i) ^ (28895i >> (u_input.a.x % 32u))) << (4294967295u % 32u)) > _wgslsmith_mult_i32(2147483647i, 1i));
    return Struct_2(1194u, _wgslsmith_add_vec3_i32(-((vec3<i32>(-1i, 44933i, -2147483647i) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u))), ~(~firstLeadingBit(vec3<i32>(-40486i, 41702i, -11677i)))), _wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(67129i, 0i, 1i), vec3<i32>(0i, 1i, 33066i)) << (~u_input.a.x % 32u), 0i), _wgslsmith_div_f32(2312f, var_0), _wgslsmith_f_op_f32(func_3(Struct_4(vec2<f32>(var_0, _wgslsmith_f_op_f32(round(1060f))), Struct_2(31648u, countOneBits(vec3<i32>(2147483647i, 0i, -2147483647i)), 1i, var_0, _wgslsmith_f_op_f32(max(var_0, var_0)))), Struct_4(arg_0, Struct_2(~0u, abs(vec3<i32>(26519i, 65526i, 2147483647i)), _wgslsmith_sub_i32(1i, -24700i), _wgslsmith_f_op_f32(max(-1066f, arg_0.x)), -194f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, 1000f)))) * vec2<f32>(-700f, -1488f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(2347f)), _wgslsmith_f_op_f32(ceil(-1046f))) + vec2<f32>(_wgslsmith_f_op_f32(-1108f * -1207f), _wgslsmith_f_op_f32(-1131f * -227f)))), func_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1005f, -797f), vec2<f32>(-937f, 534f), vec2<bool>(false, true)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1298f), -776f))));
    let var_1 = _wgslsmith_sub_u32(4294967295u, ~1u);
    var var_2 = _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2023i, var_0.b.c, var_0.b.c, var_0.b.c), vec4<i32>(-7629i, var_0.b.c, var_0.b.b.x, 4768i)), _wgslsmith_add_i32(2147483647i, 0i)), 1i, var_0.b.c, firstLeadingBit(firstTrailingBit(-2147483647i))), vec4<i32>(-_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.b.c, var_0.b.c, var_0.b.c), _wgslsmith_mod_i32(var_0.b.c, 18809i)), -22634i, var_0.b.c, ~max(select(var_0.b.b.x, var_0.b.c, true), reverseBits(-1i))));
    var var_3 = Struct_2(67046u, var_2.wzy, var_0.b.c, 840f, _wgslsmith_f_op_f32(f32(-1f) * -618f));
    var_3 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)).e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.d, var_3.d, true)) * var_3.e))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -74171i, _wgslsmith_sub_i32(reverseBits(var_0.b.c), var_2.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.a + var_0.a), _wgslsmith_f_op_vec2_f32(min(var_0.a, vec2<f32>(-210f, 1549f))))), vec2<f32>(_wgslsmith_f_op_f32(abs(145f)), func_1(_wgslsmith_f_op_vec2_f32(var_0.a * var_0.a)).e), false)), 1i);
}

