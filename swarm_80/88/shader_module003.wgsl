struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(sign(919f));
    let var_1 = var_0;
    var var_2 = !(!vec4<bool>(true, any(select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(true, arg_1.b, arg_0.b), vec3<bool>(false, arg_1.b, arg_1.b))), arg_1.b, all(select(vec3<bool>(arg_0.b, false, arg_0.b), vec3<bool>(arg_0.b, false, arg_1.b), arg_1.b))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1)))))));
    var var_4 = ~(-firstLeadingBit(-(vec3<i32>(944i, u_input.b, -17561i) >> (arg_0.a % vec3<u32>(32u)))));
    return ~(-1i);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> f32 {
    let var_0 = firstTrailingBit(vec3<u32>(~(~abs(1u)), firstLeadingBit(_wgslsmith_mult_u32(u_input.a, ~u_input.a)), _wgslsmith_add_u32(countOneBits(u_input.a), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(34033u, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, 23376u, 126039u, 22500u)), firstLeadingBit(vec4<u32>(0u, 12196u, 50587u, u_input.a))))));
    var var_1 = vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(func_3(Struct_1(var_0, arg_0), Struct_1(vec3<u32>(54364u, 1u, 24388u), arg_0)), u_input.b, 22342i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, 0i), vec3<i32>(-7260i, u_input.b, 2147483647i)), firstLeadingBit(firstLeadingBit(vec3<i32>(u_input.b, u_input.b, 0i))), false)), -1i, u_input.b);
    var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-u_input.b, i32(-1i) * -2147483647i, var_1.x, u_input.b), select(vec4<i32>(-36041i, -2147483647i, -45828i, -1i), ~vec4<i32>(-75449i, 1i, -25037i, var_1.x), var_1.x < var_1.x), vec4<i32>(25342i, u_input.b, u_input.b, var_1.x) << (countOneBits(vec4<u32>(17863u, u_input.a, u_input.a, 0u)) % vec4<u32>(32u))), select(_wgslsmith_add_vec4_i32(select(vec4<i32>(-1726i, 2147483647i, -19330i, 2147483647i), vec4<i32>(u_input.b, var_1.x, u_input.b, u_input.b), vec4<bool>(arg_0, arg_0, false, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1855i, -1i, u_input.b), vec4<i32>(12699i, var_1.x, 6161i, 24201i))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 16361i, var_1.x, var_1.x), vec4<i32>(u_input.b, 7123i, -2147483647i, -2147483647i)), select(vec4<i32>(-85881i, u_input.b, u_input.b, 1i), vec4<i32>(var_1.x, 2147483647i, u_input.b, var_1.x), vec4<bool>(arg_0, arg_0, arg_0, false))), vec4<bool>(any(vec4<bool>(arg_0, true, false, false)), true, any(vec2<bool>(arg_0, arg_0)), arg_0)) | vec4<i32>(1i, _wgslsmith_mult_i32(firstLeadingBit(u_input.b), 1i), var_1.x | -u_input.b, var_1.x | 0i));
    let var_2 = firstTrailingBit(min(var_1.xx, ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.b), var_1.xy)));
    var_1 = vec4<i32>(~abs(-1i), abs(-2147483647i) >> ((_wgslsmith_div_u32(reverseBits(u_input.a), _wgslsmith_add_u32(74153u, 23649u)) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.a), var_0.x >> (37087u % 32u)) % 32u)) % 32u), var_1.x, _wgslsmith_dot_vec3_i32(min(~(~var_1.ywz), vec3<i32>(~var_1.x, _wgslsmith_add_i32(var_2.x, -34352i), ~u_input.b)), var_1.zwy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2202f))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, arg_0.x, 947f, arg_0.x), vec4<f32>(144f, 2055f, 754f, -1000f)))))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), 510f, arg_0.x, 868f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!(any(vec4<bool>(false, false, false, false)) || true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 680f, -1576f, 1165f), vec4<f32>(var_1.x, -1812f, -546f, -222f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1351f, arg_0.x, 515f, arg_0.x))))))));
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(arg_1, 4294967295u, arg_1))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_1, 1u), vec3<u32>(0u, 128561u, 44386u)), ~firstLeadingBit(vec3<u32>(u_input.a, 1u, 1u)) << (abs(abs(vec3<u32>(61318u, 0u, 42332u))) % vec3<u32>(32u))), (_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(22255u, arg_1, arg_1), vec3<u32>(28321u, arg_1, 46032u)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, arg_1), vec3<u32>(46488u, arg_1, u_input.a))) != firstTrailingBit(~arg_1)) || false);
    var var_3 = Struct_1(firstTrailingBit(vec3<u32>(11406u, 4294967295u, 1u)), var_2.b);
    return Struct_1(var_3.a >> (vec3<u32>(~(~0u), ~0u, var_3.a.x) % vec3<u32>(32u)), abs((0u >> (1u % 32u)) ^ arg_1) > ~arg_1);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(279f - 848f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1368f - -1218f), -683f, !arg_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1181f)), _wgslsmith_f_op_f32(ceil(-789f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var_0 = 38920u;
    var_0 = 73435u;
    let var_1 = func_4(4294967295u ^ u_input.a, func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(597f, -1941f, -1000f), vec3<f32>(317f, -1000f, _wgslsmith_f_op_f32(sign(615f))))), u_input.a));
    var var_2 = ~_wgslsmith_mult_vec4_u32((countOneBits(vec4<u32>(var_1.a.x, 4294967295u, 4294967295u, 1u)) << (vec4<u32>(u_input.a, var_1.a.x, 4294967295u, 77094u) % vec4<u32>(32u))) >> (countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(8873u, 23689u, 0u, 4294967295u), vec4<u32>(0u, 7798u, var_1.a.x, u_input.a))) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 1u, 6910u, var_1.a.x), vec4<u32>(u_input.a, 4294967295u, 72103u, 41262u)), ~var_1.a.x, 45229u, 4294967295u));
    let var_3 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(702f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -619f)) - _wgslsmith_f_op_f32(-538f * -550f)), _wgslsmith_f_op_f32(f32(-1f) * -283f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1794f, -1009f, 272f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, -559f, 1103f))))), _wgslsmith_clamp_u32(8986u >> (var_2.x % 32u), abs(firstLeadingBit(~16754u)), 1u));
    let var_4 = var_1.b;
    let var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1307f, -2482f)), 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -411f)))), _wgslsmith_f_op_f32(f32(-1f) * -1323f), var_1.b)));
    var var_6 = -962f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5)))), any(!select(vec4<bool>(true, var_1.b, true, false), vec4<bool>(var_3.b, true, var_3.b, false), var_3.b)))), reverseBits(select(select(vec2<i32>(u_input.b, -1i), -vec2<i32>(-1i, 0i), select(false, true, var_3.b)), abs(-vec2<i32>(-38069i, u_input.b)), select(select(vec2<bool>(false, var_4), vec2<bool>(false, var_4), vec2<bool>(var_3.b, var_4)), select(vec2<bool>(var_3.b, var_3.b), vec2<bool>(var_3.b, var_3.b), vec2<bool>(var_1.b, var_3.b)), !vec2<bool>(var_4, var_3.b)))), vec2<i32>(~(~_wgslsmith_clamp_i32(u_input.b, 0i, 15781i)), func_3(Struct_1(~vec3<u32>(u_input.a, var_1.a.x, 7537u), true), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_5, 311f, var_5) - vec3<f32>(1788f, 1444f, var_5)), ~59861u))));
}

