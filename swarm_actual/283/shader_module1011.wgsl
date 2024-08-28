struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    global0 = max(u_input.c.x, _wgslsmith_div_i32(u_input.e.x, 20738i));
    global0 = u_input.e.x;
    global0 = i32(-1i) * -8648i;
    global0 = u_input.c.x;
    global0 = _wgslsmith_clamp_i32(select(u_input.c.x, ~_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, u_input.c.x)), ~vec2<i32>(u_input.e.x, u_input.c.x)), true), u_input.c.x, max(~(-1i), u_input.e.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_0) - -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1318f))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1728f) - -1508f) - _wgslsmith_f_op_f32(f32(-1f) * -134f))));
    let var_1 = Struct_4(Struct_3(Struct_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.a), abs(u_input.a.x)), vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 36631u), vec3<u32>(1u, 70671u, u_input.b))), (vec4<u32>(u_input.a.x, 4294967295u, u_input.d, 11847u) | vec4<u32>(11047u, 0u, 1u, 25122u)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.b)), vec2<f32>(288f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1645f, var_0, var_0))), Struct_2(arg_1.x, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -374f)))), u_input.b), vec2<bool>(all(select(arg_1.xyz, vec3<bool>(false, arg_1.x, false), vec3<bool>(false, false, true))), 56268u < u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0, -118f, var_0))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0, var_0, var_0))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0, var_0)), vec3<f32>(100f, var_0, 438f)))), Struct_2(false, vec2<u32>(u_input.d, u_input.b)), arg_1.zwz);
    global0 = _wgslsmith_dot_vec2_i32(min(_wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 62825i), u_input.e.xy), max(-u_input.e.zz, u_input.c)), u_input.e.xy), firstTrailingBit(countOneBits(vec2<i32>(arg_0.x, u_input.e.x))));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(39763u, reverseBits(1u), 4294967295u), vec3<u32>(0u, u_input.d, 39840u ^ (var_1.a.b.b.x >> (0u % 32u))) << (var_1.a.a.c.yyz % vec3<u32>(32u)));
    let var_3 = var_1.a.b;
    return 245f;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-342f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1043f + -882f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3054f)) * 524f)));
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.c.x, arg_0.x), 0i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.x, u_input.c.x), arg_0.xx), -arg_1.yz)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, arg_0.x, arg_1.x) & arg_0, ~arg_0) >> (~(vec3<u32>(u_input.d, u_input.b, u_input.b) ^ vec3<u32>(26213u, u_input.b, u_input.d)) % vec3<u32>(32u))), 64195i, max(_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-36387i, 31034i), _wgslsmith_div_i32(arg_1.x, 46452i), arg_0.x), _wgslsmith_sub_i32(arg_0.x, arg_0.x)));
    var var_1 = -54024i;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_1.x, arg_0.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2501f, 1296f))), vec2<f32>(859f, -1000f)) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-709f, 601f) - vec2<f32>(1232f, -1400f))))) - vec2<f32>(-1392f, 1237f)));
    var var_3 = _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.d, _wgslsmith_sub_u32(abs(u_input.d), 4294967295u))), _wgslsmith_mod_u32(21679u, abs(u_input.a.x) ^ ~u_input.b));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(548f - -1704f) + _wgslsmith_f_op_f32(round(1029f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-368f, 390f, false)), -1840f))), _wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.e.x, -u_input.c.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.c.x, u_input.e.x), vec4<i32>(4220i, u_input.c.x, u_input.e.x, u_input.c.x)), ~vec4<i32>(39676i, 14526i, -1i, u_input.c.x))), -(u_input.e >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, u_input.d, 4294967295u), vec3<u32>(u_input.a.x, 4189u, u_input.d)) % vec3<u32>(32u))))), (true || (33329u >= min(u_input.d, u_input.d))) | all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
    let var_1 = u_input.e.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(325f, -255f, 1f));
    var var_3 = countOneBits(vec2<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(0i, firstTrailingBit(u_input.e.x)))));
    let var_4 = Struct_3(Struct_1(~u_input.d, ~(~(~vec2<u32>(19272u, 4886u))), ~(~min(vec4<u32>(u_input.a.x, 42468u, 60854u, 24978u), vec4<u32>(9777u, 4294967295u, 34037u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz))), var_2), Struct_2(!all(vec4<bool>(true, true, true, true)), u_input.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.yy))), 25861u);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_2.x, -644f, 151f), vec4<f32>(var_2.x, var_4.a.e.x, -1000f, -1096f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, 483f, var_0, 256f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1006f, var_0, var_0) + vec4<f32>(2397f, 1000f, var_0, var_2.x))))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-979f - var_4.a.d.x), _wgslsmith_f_op_f32(-1677f - 290f)), 1000f, var_4.a.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_0)) + _wgslsmith_f_op_f32(-var_4.c.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(min(var_0, var_0)), -842f, _wgslsmith_div_f32(var_4.c.x, var_4.a.e.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(614f, var_4.c.x, 348f, -632f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(628f, var_0, var_4.c.x, 1035f)), var_4.b.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3(-1433f)).x), _wgslsmith_f_op_f32(step(764f, var_4.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4.c.x - var_4.c.x), _wgslsmith_f_op_f32(-var_2.x)))));
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, var_0, -574f))) + _wgslsmith_f_op_vec3_f32(-var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_5)), -select(firstTrailingBit(-u_input.e), u_input.e, true), firstLeadingBit(_wgslsmith_sub_u32(reverseBits(var_4.a.c.x), ~u_input.d)), var_2.x);
}

