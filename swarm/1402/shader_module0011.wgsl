struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = vec2<bool>(!any(vec4<bool>(arg_1.c.x && arg_1.c.x, false, true, true)), true);
    let var_1 = ~countOneBits(-vec4<i32>(-15272i, arg_1.d.a.x, -20385i, arg_1.d.a.x)) >> (select(abs(select(~vec4<u32>(arg_0.x, arg_1.d.b, 4294967295u, arg_0.x), vec4<u32>(arg_0.x, 0u, 65878u, u_input.a), select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(true, true, arg_1.c.x, true), vec4<bool>(false, false, arg_1.c.x, arg_1.c.x)))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 16411u, 0u) | vec3<u32>(1u, arg_0.x, arg_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, 81773u, 26995u), vec3<u32>(4294967295u, arg_1.d.b, arg_0.x))), ~arg_0.x | reverseBits(arg_0.x), abs(~1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.d.b, 1u, 14356u, u_input.b.x) & vec4<u32>(10864u, u_input.b.x, arg_1.a.b, arg_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, arg_1.a.b, arg_1.d.b, u_input.a), vec4<u32>(1u, arg_0.x, arg_1.d.b, arg_1.a.b)))), select(select(vec4<bool>(false, var_0.x, false, var_0.x), select(vec4<bool>(arg_1.c.x, var_0.x, var_0.x, var_0.x), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<bool>(true, var_0.x, true, true)), vec4<bool>(arg_1.c.x, arg_1.c.x, arg_1.c.x, var_0.x)), vec4<bool>(true, any(arg_1.c.yx), u_input.a != 0u, var_0.x), false)) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(arg_1.a.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(251f)))));
    var var_3 = Struct_3(Struct_2(Struct_1(~(arg_1.a.a & var_1.wx), arg_1.d.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.c.x, arg_1.a.c.x, -1328f) * vec3<f32>(-697f, -371f, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_1.b)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -1063f, -117f, arg_1.d.c.x) + arg_1.b))), arg_1.c, Struct_1(var_1.xy, arg_1.d.b & max(arg_1.d.b, 23912u), vec3<f32>(_wgslsmith_f_op_f32(arg_1.d.c.x - var_2), _wgslsmith_f_op_f32(select(arg_1.d.c.x, var_2, false)), var_2))), false);
    let var_4 = var_3.a.a;
    return ~(vec2<i32>(-2147483647i, arg_1.a.a.x) >> (((u_input.b | u_input.b) ^ reverseBits(u_input.b)) % vec2<u32>(32u))) | ~vec2<i32>(arg_1.a.a.x ^ (arg_1.a.a.x & var_3.a.d.a.x), -2147483647i);
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(~(-vec2<i32>(37724i, 12812i)), ~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), 870f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1782f, -2019f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -210f) - -1243f)), -915f, _wgslsmith_div_f32(-874f, -1396f), _wgslsmith_f_op_f32(155f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1855f)))), !vec3<bool>(true, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false))), true), Struct_1(func_3(vec2<u32>(~4294967295u, ~4294967295u), Struct_2(Struct_1(vec2<i32>(-21336i, 27527i), 26689u, vec3<f32>(1070f, 356f, 1275f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1512f, 520f, 129f, -614f) - vec4<f32>(211f, 2217f, 1528f, 728f)), vec3<bool>(true, true, true), Struct_1(vec2<i32>(-28694i, -18212i), arg_0, vec3<f32>(-172f, -764f, -782f)))), 130170u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1780f, 992f, 329f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1142f, 1000f, -776f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1931f, 619f, -1316f) + vec3<f32>(1877f, 923f, 1594f)))))));
    var var_1 = var_0.a.c.x;
    return Struct_3(Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(min(var_0.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_0.b))))), vec3<bool>(all(vec4<bool>(var_0.c.x, true, var_0.c.x, false)), var_0.c.x, all(vec2<bool>(true, var_0.c.x)) && true), Struct_1(vec2<i32>(25414i, ~var_0.d.a.x), 52919u, vec3<f32>(_wgslsmith_f_op_f32(min(1465f, var_0.b.x)), var_0.d.c.x, _wgslsmith_div_f32(var_0.a.c.x, var_0.a.c.x)))), !(!var_0.c.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(u_input.a), ~u_input.b.x, u_input.a, firstLeadingBit(4294967295u)), ~(vec4<u32>(0u, u_input.b.x, 7937u, u_input.a) & vec4<u32>(21661u, 4294967295u, 31970u, u_input.b.x))));
    var_0 = func_2(0u);
    var var_1 = Struct_1(-(~(var_0.a.a.a << (min(u_input.b, u_input.b) % vec2<u32>(32u)))), 63017u, var_0.a.a.c);
    var_1 = func_2(4294967295u & _wgslsmith_sub_u32(~u_input.b.x | ~1u, var_0.a.a.b)).a.a;
    var_0 = Struct_3(func_2(_wgslsmith_div_u32(_wgslsmith_clamp_u32(15456u, _wgslsmith_mod_u32(47268u, 4294967295u), _wgslsmith_mod_u32(75989u, 1u)), countOneBits(~u_input.a))).a, var_0.a.c.x | var_0.a.c.x);
    return Struct_2(var_0.a.a, arg_1, func_2(var_1.b).a.c, func_2(_wgslsmith_sub_u32((4294967295u << (var_1.b % 32u)) & 1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1976u, var_0.a.a.b)))).a.a);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> f32 {
    let var_0 = arg_1;
    return 401f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(true, func_1(vec2<f32>(1059f, -109f), vec4<f32>(-666f, 1127f, 1000f, -1000f)), i32(-1i) * -2147483647i, 1264f)) + -353f), 1000f));
    var var_1 = -2147483647i;
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(func_1(vec2<f32>(-1360f, var_0.x), vec4<f32>(1000f, var_0.x, 150f, var_0.x)).a.a.x, min(-1i, 69901i)), 1i, 1i), -vec3<i32>(-2147483647i, -17698i, 1i)), vec3<i32>(~(~(-2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-2147483647i), ~(-2147483647i)), _wgslsmith_add_vec2_i32(~vec2<i32>(24968i, 2048i), vec2<i32>(29529i, 25821i))), _wgslsmith_div_i32(-1703i, ~1i)));
    var var_2 = min(u_input.a, u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-156f, -658f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, 343f) - vec2<f32>(964f, 608f))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 934f) * vec2<f32>(161f, -1247f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-101f, var_0.x), vec2<f32>(var_0.x, 782f), false))))))));
    var_1 = -1i >> (u_input.a % 32u);
    var var_4 = reverseBits(~vec4<u32>(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, var_3.x) * var_3), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, 623f, 1188f))).a.b, ~43795u, max(85796u, ~u_input.b.x), u_input.a));
    var_2 = ~(~max(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1274u), ~vec2<u32>(43082u, var_4.x))));
    var var_5 = vec2<i32>(1i, -(~1i));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(var_5.x, -_wgslsmith_mod_i32(47314i, var_5.x), ~(-12334i), -31048i)), _wgslsmith_f_op_vec2_f32(var_3 - var_3), _wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(519f * var_0.x)), var_3.x, _wgslsmith_f_op_f32(-func_2(46496u).a.d.c.x), _wgslsmith_f_op_f32(trunc(315f))) * vec4<f32>(_wgslsmith_div_f32(193f, _wgslsmith_f_op_f32(sign(139f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-1317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, Struct_2(Struct_1(vec2<i32>(-2147483647i, var_5.x), u_input.a, vec3<f32>(265f, var_3.x, var_3.x)), vec4<f32>(-808f, var_3.x, 2161f, var_0.x), vec3<bool>(false, true, true), Struct_1(vec2<i32>(var_5.x, -2147483647i), 20568u, vec3<f32>(var_0.x, var_3.x, var_3.x))), var_5.x, var_0.x))), 2076f)), ~max(0i, ~func_2(1u).a.a.a.x));
}

