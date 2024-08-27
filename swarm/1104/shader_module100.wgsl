struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<f32> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), !any(vec2<bool>(false, true))), true || any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))));
    let var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_0.e), arg_0.b.x));
    var var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, abs(u_input.a), ~(~(1u << (0u % 32u)))), _wgslsmith_div_vec4_u32(countOneBits(~min(vec4<u32>(67411u, 0u, arg_0.a, 1976u), vec4<u32>(arg_0.d, 1u, 23141u, arg_0.a))), select(~vec4<u32>(u_input.a, 41100u, u_input.a, u_input.a), abs(vec4<u32>(4294967295u, arg_0.c, 91886u, u_input.a)), true)));
    var_2 = -198f;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(360f, 827f)))) + vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-537f, arg_0.e)), _wgslsmith_f_op_f32(round(1751f)), true)))) + arg_1);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1243f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_1(0u, _wgslsmith_div_vec3_f32(vec3<f32>(187f, -532f, 1188f), vec3<f32>(1020f, 222f, 101f)), _wgslsmith_mod_u32(u_input.a, 0u), arg_1.x ^ u_input.a, _wgslsmith_f_op_f32(375f - -260f)), vec2<f32>(-113f, -1284f)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -198f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.a - var_0.b.x), -1125f)), -1000f)));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(-2147483647i, 1i, -1i), _wgslsmith_div_vec4_u32(min(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(vec4<u32>(u_input.a, 46532u, u_input.a, u_input.a)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-641f)), 372f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1918f * 1979f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -225f) * -605f)) + vec4<f32>(_wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(select(-1854f, -278f, false))), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(min(-1389f, _wgslsmith_f_op_f32(ceil(-1394f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, -788f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1231f)) + 1344f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), _wgslsmith_f_op_f32(trunc(-790f)), var_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-111f, 430f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, 1000f)), -162f, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-1400f * 1098f))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec4<bool>(false, false, false, true)) && false, true, true))), vec4<bool>(true, any(vec2<bool>(true, true)), false, any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), all(vec2<bool>(false, false)))))));
    let var_1 = _wgslsmith_f_op_f32(-1166f * _wgslsmith_f_op_f32(abs(var_0.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, var_0.x, var_1, -534f)) + vec4<f32>(126f, var_1, var_1, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1, var_0.x, -1397f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_0.x, 1267f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(step(var_1, var_1)), 1001f, var_1), vec4<f32>(_wgslsmith_f_op_f32(-var_1), -265f, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(1213f * 1258f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-373f, 662f, -1256f, var_0.x), vec4<f32>(var_1, -746f, 571f, var_0.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0.x, var_1, 1495f) * vec4<f32>(var_1, 628f, var_0.x, 1152f))))));
    return ~vec2<u32>(~4606u, u_input.a);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(arg_2.x, arg_2.x, 21954u) << (vec3<u32>(6038u, u_input.a, u_input.a) % vec3<u32>(32u)))), arg_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1028f, -1595f, -320f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1495f, -1105f, -613f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, 178f, 991f)))))), ~reverseBits(4294967295u) & _wgslsmith_sub_u32(u_input.a, ~arg_2.x | ~arg_2.x), _wgslsmith_add_u32(arg_2.x, abs(u_input.a)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(1u & u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -206f, -1000f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(false, arg_1, arg_1))), arg_2.x, _wgslsmith_dot_vec2_u32(~arg_2, arg_2 & vec2<u32>(arg_0, arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1368f, 721f))))))).x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.e, var_0.e, -683f)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, var_0.b.x, var_0.e))))), var_0.b))));
    var var_2 = arg_1;
    let var_3 = select(vec4<bool>(true, any(vec3<bool>(!arg_1, arg_1 && true, true)), !(!select(arg_1, arg_1, arg_1)), true), vec4<bool>(arg_1, any(!vec4<bool>(arg_1, false, false, true)) && all(vec3<bool>(true, true, true)), false, !all(vec4<bool>(arg_1, false, arg_1, arg_1))), true);
    var var_4 = Struct_4(_wgslsmith_f_op_f32(round(-817f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(30083i, 2147483647i, 42089i) >> (vec3<u32>(71690u, 4294967295u, arg_2.x) % vec3<u32>(32u)), abs(vec4<u32>(arg_0, u_input.a, 44712u, 0u)))).x * -853f), _wgslsmith_f_op_f32(-var_0.e)));
    return ~reverseBits(_wgslsmith_div_vec2_i32(~countOneBits(vec2<i32>(2147483647i, 30293i)), _wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-16961i, -1i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_clamp_u32(~u_input.a, 7632u, u_input.a), select(true, all(vec2<bool>(true, true)), true), select((~vec2<u32>(u_input.a, 0u) << ((vec2<u32>(1u, u_input.a) >> (vec2<u32>(19468u, 54839u) % vec2<u32>(32u))) % vec2<u32>(32u))) & abs(func_1()), vec2<u32>(u_input.a, 1u), true));
    var var_1 = -20019i & var_0.x;
    var_1 = 1i ^ ~select(var_0.x, -60985i, all(vec3<bool>(true, true, true)));
    var_1 = var_0.x;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(2147483647i, firstTrailingBit(1i)), var_0.x);
    let var_3 = 4294967295u;
    var var_4 = true;
    var var_5 = -var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(13431i, -2147483647i, -1i), reverseBits(vec3<i32>(var_0.x, var_2.x, -61500i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(6742u, vec3<f32>(871f, -564f, -174f), u_input.a, 32054u, -961f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1572f, 1000f))))).x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(782f + -201f), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_3, vec3<f32>(-928f, -669f, -925f), u_input.a, 43806u, 613f), vec2<f32>(-476f, 154f))).x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(665f)) - -1000f))), var_2.x, _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_3, u_input.a, 1u)), ~vec3<u32>(32829u, var_3, 0u) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_3, 4294967295u), vec3<u32>(var_3, 0u, 1u))));
}

