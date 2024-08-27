struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, ~(~u_input.a)), 1u, min(min(~u_input.a, _wgslsmith_clamp_u32(max(75556u, 1u), reverseBits(35926u), u_input.d.x)), u_input.d.x));
    var var_1 = !(!((u_input.c <= 2147483647i) | true)) & any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(var_0, select(reverseBits(vec4<u32>(var_0.x, u_input.d.x, var_0.x, 1u)), firstTrailingBit(u_input.d), vec4<bool>(true, false, true, true)))));
    var_1 = all(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), vec3<bool>(any(vec2<bool>(false, false)), true, u_input.d.x != var_2.a.a.x), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
    let var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-820f, 1647f, -594f, 271f), vec4<f32>(316f, 218f, 493f, 780f))))) - vec4<f32>(1f, _wgslsmith_f_op_f32(abs(965f)), -1447f, _wgslsmith_f_op_f32(sign(730f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(807f, -1248f), -1000f, -1076f, _wgslsmith_f_op_f32(min(283f, -1028f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, 417f, 1838f, 1554f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + -1726f), -916f);
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<f32>) -> f32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.x, 1000f))) * 455f));
    let var_1 = arg_2.x;
    let var_2 = Struct_1(vec4<u32>(~u_input.a, ~_wgslsmith_mult_u32(abs(u_input.d.x), 37788u), ~_wgslsmith_mult_u32(~u_input.a, countOneBits(u_input.a)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), u_input.d), ~17508u))));
    let var_3 = var_2;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1 - var_0.x))))) - arg_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -100f))), _wgslsmith_f_op_f32(-791f + _wgslsmith_f_op_f32(-arg_2.x)));
    return 1000f;
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-1130f * _wgslsmith_f_op_f32(trunc(394f))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-562f - -1019f), _wgslsmith_f_op_f32(f32(-1f) * -706f))), _wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(u_input.c, 0i)), true, vec3<f32>(400f, 172f, -1000f))))) * _wgslsmith_f_op_f32(func_2(i32(-1i) * -56795i, true, vec3<f32>(-994f, _wgslsmith_f_op_f32(-1180f * -229f), -1868f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-452f + _wgslsmith_f_op_f32(f32(-1f) * -940f)));
    var var_1 = ~firstTrailingBit(vec2<i32>(2147483647i, ~_wgslsmith_clamp_i32(2147483647i, -2147483647i, 37902i)));
    let var_2 = _wgslsmith_mult_i32(u_input.b & _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(18026i, -27914i, var_1.x), vec3<i32>(var_1.x, var_1.x, -36538i))), -vec3<i32>(var_1.x, -63310i, var_1.x)), _wgslsmith_add_i32(var_1.x, abs(select(u_input.e, var_1.x, false)) | 21929i));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(2531f, 1427f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-836f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1010f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(254f * _wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(func_1((u_input.d | vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)) ^ vec4<u32>(79586u, u_input.a, 56904u, 4784u))))), 2008f);
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(222f, var_0.x, 2180f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1007f, 542f, -557f), vec3<f32>(var_0.x, -515f, var_0.x))))))), select(abs(49128u), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 12244u, 0u, 0u)), ~vec4<u32>(10985u, u_input.a, 43171u, u_input.d.x))), u_input.d.x != ~u_input.d.x));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(937f, _wgslsmith_f_op_f32(round(1020f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1778f))))), u_input.d.x);
    var_1 = Struct_3(var_1.a, u_input.a);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.a.x, var_1.a.x, _wgslsmith_f_op_f32(-var_0.x)))) * vec3<f32>(var_0.x, _wgslsmith_f_op_f32(func_1(vec4<u32>(4294967295u, 58990u, u_input.a, var_1.b) ^ vec4<u32>(32718u, var_1.b, 1u, 7182u))), _wgslsmith_f_op_f32(func_2(1i, false, var_1.a)))), 120502u);
    var var_2 = Struct_4(!vec2<bool>(u_input.c == -12250i, true), Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 1u) | u_input.d, ~u_input.d))), Struct_3(vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-282f - 553f), 1f), var_1.a.x), u_input.a));
    var var_3 = vec3<i32>(select(_wgslsmith_sub_i32(u_input.b, u_input.e), u_input.b, any(!select(vec3<bool>(var_2.a.x, var_2.a.x, false), vec3<bool>(true, var_2.a.x, false), var_2.a.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, -57386i, -2147483647i, 0i), vec4<i32>(u_input.e, u_input.e, 1i, u_input.c))), vec4<i32>(-1i, u_input.e, u_input.e, -2147483647i) & countOneBits(vec4<i32>(-1i, u_input.c, u_input.b, 23476i))), ~vec4<i32>(u_input.e, ~u_input.b, u_input.b, u_input.b >> (23261u % 32u))), _wgslsmith_sub_i32(i32(-1i) * -u_input.b, -25232i));
    let var_4 = var_2.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~min(var_2.c.b, 4294967295u)), ~(~var_1.b) & reverseBits(~24769u), var_1.b), countOneBits(var_2.c.b), -1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(var_0.x, -1000f), _wgslsmith_f_op_f32(var_0.x - -1409f), _wgslsmith_f_op_f32(func_3())))));
}

