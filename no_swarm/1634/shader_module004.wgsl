struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(347f, -515f) - -1952f))))) * 1080f);
    var_0 = arg_0.e.d;
    var_0 = _wgslsmith_f_op_f32(-804f - arg_0.e.d);
    let var_1 = 27293i;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.e.d + arg_0.e.d) * _wgslsmith_f_op_f32(trunc(arg_0.e.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1719f)), arg_0.e.d), false));
    return 1000f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<i32>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1739f)))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, Struct_1(-40444i, vec3<u32>(0u, u_input.d, 33092u), -375f, 1000f), vec4<i32>(1i, -12308i, -10820i, arg_2.x), vec2<i32>(arg_2.x, -1i), Struct_1(u_input.b.x, vec3<u32>(arg_0, 24553u, u_input.a.x), 1000f, 1915f)), arg_3, vec4<u32>(4294967295u, arg_0, 1u, 37686u), u_input.b.yy)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-214f, 1366f, arg_3)))))));
    let var_1 = abs(min(((0u & u_input.a.x) << (min(77260u, arg_0) % 32u)) & ~(~arg_0), max(arg_0, 35431u)));
    var var_2 = Struct_5(Struct_1(firstTrailingBit(firstLeadingBit(~u_input.b.x)), vec3<u32>(arg_0, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(var_1, u_input.c), ~u_input.c), 0u & u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2056f + _wgslsmith_f_op_f32(-329f - -781f))), 767f));
    var_0 = any(!vec2<bool>(!(arg_3 && false), any(vec2<bool>(false, false))));
    var_2 = Struct_5(var_2.a);
    return _wgslsmith_add_u32(16595u, abs(reverseBits(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.d, var_2.a.b.x), arg_0))));
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = -20892i;
    let var_1 = u_input.d;
    let var_2 = !vec2<bool>(false, select(true, ~4294967295u < u_input.d, true));
    var_0 = -1i;
    var_0 = _wgslsmith_add_i32(0i, u_input.b.x) & -(~(~2147483647i));
    return 1148f;
}

fn func_1() -> vec3<u32> {
    let var_0 = vec4<f32>(950f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(915f, -1260f) - -568f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_2(1u, true, vec2<i32>(u_input.b.x, u_input.b.x), true), vec2<i32>(-20735i, u_input.b.x) | u_input.b.yy, -538f, Struct_1(-1i, vec3<u32>(u_input.c, 1u, u_input.d), 513f, -485f))), -126f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(f32(-1f) * -1294f))), _wgslsmith_f_op_f32(func_4(min(abs(~u_input.d), u_input.a.x), countOneBits(~(~u_input.b.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), Struct_1(u_input.b.x, ~vec3<u32>(0u, u_input.d, 4294967295u), 895f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(33975u, u_input.b.xy, 212f, Struct_1(u_input.b.x, vec3<u32>(u_input.c, 35206u, 1u), 1000f, 1274f))), _wgslsmith_div_f32(-861f, 2119f)))))));
    let var_1 = Struct_1(u_input.b.x, ~abs(~vec3<u32>(u_input.a.x, 23994u, 97355u) >> (~vec3<u32>(0u, 0u, u_input.c) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(trunc(var_0.x))), -752f) - _wgslsmith_f_op_f32(f32(-1f) * -947f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1075f))) + _wgslsmith_f_op_f32(floor(-594f))));
    var var_2 = var_0.xw;
    var var_3 = Struct_2(var_1.b.x, var_1, vec4<i32>(min(u_input.b.x, u_input.b.x), _wgslsmith_div_i32(var_1.a, u_input.b.x & ~u_input.b.x), -(_wgslsmith_mult_i32(0i, var_1.a) ^ select(-34394i, -10631i, false)), -1i), u_input.b.yx, Struct_1(abs(i32(-1i) * -2147483647i), ~var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-855f)) - _wgslsmith_f_op_f32(-var_2.x))), var_2.x));
    var var_4 = Struct_3(Struct_2(func_2(abs(~u_input.c), all(vec4<bool>(true, true, true, true)), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, var_3.e.a)), vec2<i32>(var_1.a, var_3.b.a)), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_dot_vec4_i32(~var_3.c, vec4<i32>(u_input.b.x, 2147483647i, var_1.a, var_3.e.a)), _wgslsmith_mod_vec3_u32(var_3.b.b, var_3.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_f_op_f32(559f * var_1.c)), _wgslsmith_f_op_f32(func_3(Struct_2(51447u, Struct_1(var_1.a, var_1.b, var_3.b.d, var_2.x), vec4<i32>(var_3.b.a, 26900i, var_3.d.x, var_1.a), var_3.d, var_1), true, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 22172u, var_3.a, 36984u), vec4<u32>(var_1.b.x, 130315u, 57969u, u_input.c)), -u_input.b.yy))), ~select(var_3.c & var_3.c, firstLeadingBit(vec4<i32>(-2147483647i, -2147483647i, 4125i, var_1.a)), false), _wgslsmith_sub_vec2_i32(~max(vec2<i32>(-52890i, var_1.a), vec2<i32>(-59470i, var_3.d.x)), vec2<i32>(select(var_3.e.a, -2147483647i, false), var_1.a)), Struct_1(u_input.b.x, vec3<u32>(u_input.c, ~0u, _wgslsmith_clamp_u32(105u, 7068u, var_1.b.x)), 1984f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-206f, var_2.x) - -662f))), Struct_2(var_1.b.x, var_1, select(vec4<i32>(var_3.d.x, _wgslsmith_dot_vec2_i32(var_3.c.zw, u_input.b.zx), _wgslsmith_div_i32(var_3.e.a, var_1.a), _wgslsmith_add_i32(var_1.a, var_1.a)), ~_wgslsmith_mult_vec4_i32(var_3.c, var_3.c), true & any(vec4<bool>(true, true, false, false))), u_input.b.yz, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x * -489f), _wgslsmith_f_op_f32(sign(-252f)))), -803f);
    return _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(max(var_4.b.e.b.x, abs(1u)), firstLeadingBit(_wgslsmith_add_u32(4294967295u, var_4.b.a)), 1u), ~vec3<u32>(max(1u, 27221u), min(52384u, 4294967295u), _wgslsmith_sub_u32(u_input.d, 4294967295u))), vec3<u32>(0u, u_input.d, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1094u, 4294967295u), u_input.a), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec2<bool>(~u_input.c >= (u_input.a.x | 4294967295u), u_input.d < u_input.d), vec2<bool>(all(vec4<bool>(true, true, false, true)) || false, true), true));
    var_0 = !select(any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true))), true, false);
    let var_1 = 1u ^ u_input.d;
    var var_2 = Struct_4(Struct_1(countOneBits(_wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, 45141i), vec2<i32>(u_input.b.x, u_input.b.x)))), _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 121876u, 1u), ~vec3<u32>(15889u, u_input.d, 2315u)), func_1()), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c, 31675u), u_input.d), u_input.b.yy, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-148f)))), Struct_1(firstTrailingBit(u_input.b.x), ~vec3<u32>(0u, var_1, 40667u), -395f, _wgslsmith_f_op_f32(min(1000f, -422f))))), 416f), _wgslsmith_clamp_vec2_i32(-(~(vec2<i32>(u_input.b.x, -10222i) << (vec2<u32>(15561u, 4294967295u) % vec2<u32>(32u)))), ~vec2<i32>(2147483647i, u_input.b.x), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, u_input.b.x), u_input.b.zx), u_input.b.xy)), Struct_3(Struct_2(u_input.c, Struct_1(-5309i, vec3<u32>(53233u, 27839u, u_input.a.x) >> (vec3<u32>(var_1, var_1, 34182u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(662f + 1378f), _wgslsmith_f_op_f32(-1810f + -710f)), vec4<i32>(u_input.b.x | u_input.b.x, -34199i, i32(-1i) * -1i, -1i), (u_input.b.xz | vec2<i32>(u_input.b.x, 2147483647i)) ^ -u_input.b.xy, Struct_1(u_input.b.x, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 12818u, u_input.a.x), vec3<u32>(1u, var_1, 49031u)), 1000f, 930f)), Struct_2(_wgslsmith_div_u32(~u_input.a.x, ~u_input.a.x), Struct_1(u_input.b.x ^ u_input.b.x, firstTrailingBit(vec3<u32>(64941u, u_input.c, 59531u)), _wgslsmith_f_op_f32(step(1000f, 342f)), 1f), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -9170i, u_input.b.x), abs(vec4<i32>(u_input.b.x, -20576i, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec2_i32(select(u_input.b.zx, vec2<i32>(2147483647i, 14928i), true), vec2<i32>(-1i, -2147483647i)), Struct_1(u_input.b.x, vec3<u32>(var_1, 4294967295u, 5431u) >> (vec3<u32>(34555u, var_1, 0u) % vec3<u32>(32u)), 247f, _wgslsmith_f_op_f32(trunc(-648f)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, Struct_1(u_input.b.x, vec3<u32>(var_1, 1u, u_input.a.x), 182f, 361f), vec4<i32>(-73000i, u_input.b.x, u_input.b.x, -1i), u_input.b.xx, Struct_1(-11231i, vec3<u32>(10954u, u_input.a.x, 1512u), -128f, 1151f)), true, vec4<u32>(u_input.d, 11836u, var_1, var_1), _wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.yy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1264f)))), 1329f), Struct_3(Struct_2(min(~14330u, abs(4294967295u)), Struct_1(2147483647i, vec3<u32>(var_1, u_input.c, 69270u) | vec3<u32>(94192u, u_input.d, u_input.d), -722f, 349f), _wgslsmith_sub_vec4_i32(vec4<i32>(10662i, u_input.b.x, 4236i, 2147483647i), vec4<i32>(5439i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.yx, Struct_1(0i, reverseBits(vec3<u32>(u_input.a.x, u_input.c, var_1)), -194f, 387f)), Struct_2(firstLeadingBit(u_input.c & 53473u), Struct_1(-u_input.b.x, ~vec3<u32>(30568u, u_input.a.x, 4294967295u), _wgslsmith_div_f32(1166f, 1009f), -1843f), firstTrailingBit(-vec4<i32>(-11794i, 0i, u_input.b.x, u_input.b.x)), vec2<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 2147483647i), u_input.b.x ^ u_input.b.x), Struct_1(-21464i, firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_f_op_f32(f32(-1f) * -1420f), 575f)), vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -969f))), 203f));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1159f, -284f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1210f)))))), -620f));
    let var_4 = !vec2<bool>(all(vec4<bool>(true, true, true, true)) & false, var_3 == _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_2.c.a.b.c)));
    var_2 = Struct_4(var_2.a, _wgslsmith_clamp_vec2_i32(~vec2<i32>(11275i, 1i), ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.c.b.e.a, -21542i), var_2.d.a.d, u_input.b.xx), -vec2<i32>(-6143i, -20908i), 26670u != var_2.c.b.b.b.x), u_input.b.yy), Struct_3(Struct_2(4294967295u, var_2.c.a.b, vec4<i32>(var_2.b.x, var_2.d.b.c.x, -2147483647i, _wgslsmith_mult_i32(-66091i, u_input.b.x)), vec2<i32>(_wgslsmith_sub_i32(-8677i, var_2.d.b.e.a), select(20545i, 2147483647i, true)), var_2.c.b.b), var_2.d.a, vec2<f32>(var_2.c.d, -2401f), 863f), Struct_3(var_2.d.b, var_2.d.a, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3, 178f), var_2.d.c, var_4)), vec2<f32>(var_2.d.a.e.d, -126f)), vec2<f32>(_wgslsmith_f_op_f32(-1000f - 841f), _wgslsmith_f_op_f32(round(var_2.a.d))))), 221f));
    let var_5 = var_4;
    let var_6 = Struct_4(Struct_1(u_input.b.x, ~vec3<u32>(var_1, _wgslsmith_div_u32(var_1, u_input.d), _wgslsmith_dot_vec3_u32(var_2.d.b.b.b, vec3<u32>(var_1, var_1, u_input.a.x))), 1305f, var_3), vec2<i32>(1i, var_2.c.a.b.a), var_2.c, Struct_3(Struct_2(36849u, var_2.a, vec4<i32>(63136i & u_input.b.x, var_2.c.b.d.x, _wgslsmith_sub_i32(-10659i, 19265i), u_input.b.x), ~_wgslsmith_mult_vec2_i32(u_input.b.xy, var_2.b), Struct_1(i32(-1i) * -31245i, _wgslsmith_mod_vec3_u32(var_2.a.b, vec3<u32>(var_1, var_1, 48135u)), -442f, var_2.a.c)), Struct_2(43108u, Struct_1(_wgslsmith_mod_i32(0i, 1i), ~var_2.c.a.e.b, _wgslsmith_div_f32(-296f, -388f), _wgslsmith_f_op_f32(f32(-1f) * -732f)), vec4<i32>(_wgslsmith_add_i32(22901i, var_2.d.b.d.x), 2147483647i, firstTrailingBit(var_2.a.a), -54282i), var_2.b, Struct_1(u_input.b.x, vec3<u32>(u_input.d, 0u, 10836u), -923f, _wgslsmith_f_op_f32(-139f + var_2.c.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.c)), _wgslsmith_f_op_f32(-395f - _wgslsmith_f_op_f32(max(var_2.a.c, _wgslsmith_f_op_f32(-var_3))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(var_6.b.x & 1i, -1i, firstLeadingBit(var_2.d.b.d.x)) & ~(var_6.d.b.c.zww & vec3<i32>(var_2.b.x, 2147483647i, -24803i)), -(-vec3<i32>(0i, var_6.c.b.e.a, var_6.c.b.b.a) | -var_6.d.a.c.wyy)), 450f, _wgslsmith_f_op_f32(func_3(Struct_2(~u_input.a.x, var_6.d.a.e, firstLeadingBit(var_2.d.a.c & vec4<i32>(var_2.a.a, var_2.a.a, var_6.c.b.e.a, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.x, 2147483647i), vec2<i32>(1i, var_2.c.b.e.a)) << (_wgslsmith_mult_vec2_u32(var_2.a.b.zy, var_6.a.b.yx) % vec2<u32>(32u)), Struct_1(-var_6.b.x, vec3<u32>(var_1, 136058u, u_input.a.x), _wgslsmith_div_f32(var_3, var_2.c.a.e.d), _wgslsmith_f_op_f32(var_2.a.c * var_3))), select(u_input.d >= _wgslsmith_add_u32(54382u, u_input.a.x), true, select(true, any(vec2<bool>(var_4.x, false)), !var_4.x)), ~(~vec4<u32>(var_1, 0u, 4294967295u, var_2.d.b.b.b.x)), -_wgslsmith_add_vec2_i32(u_input.b.zz, vec2<i32>(17564i, 2147483647i)))));
}

