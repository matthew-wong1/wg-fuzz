struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = countOneBits(_wgslsmith_dot_vec4_i32(u_input.a, -vec4<i32>(-2147483647i, -u_input.a.x, firstLeadingBit(-56551i), u_input.a.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1955f * 357f) + 1696f), -792f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1279f, _wgslsmith_f_op_f32(select(946f, -957f, var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2604f, -687f))))));
    let var_3 = 1i;
    let var_4 = _wgslsmith_div_vec4_f32(vec4<f32>(var_2, -139f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2, var_2)) - -1421f))), _wgslsmith_f_op_f32(floor(-295f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, var_2, var_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-748f, 1059f, 686f, var_2) + vec4<f32>(343f, -1261f, var_2, var_2)), any(vec4<bool>(false, true, arg_1.a, arg_1.a)))))));
    return arg_0;
}

fn func_2() -> vec2<i32> {
    let var_0 = -max(reverseBits(_wgslsmith_dot_vec3_i32(u_input.a.yyw, ~u_input.a.zzw)), -(~u_input.a.x));
    let var_1 = max(-firstTrailingBit(1i), ~var_0);
    var var_2 = false;
    let var_3 = -2147483647i;
    var var_4 = Struct_1(any(vec2<bool>(true, true)), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(8063u, 1u, 4294967295u), vec3<u32>(21208u, 4294967295u, 7767u)), ~(~49967u)) ^ vec2<u32>(41504u, func_3(45239u, Struct_1(true, vec2<u32>(31080u, 0u))) | 0u));
    return vec2<i32>(-1i, 1i);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = select(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-17287i, 0i), u_input.a.xw)), u_input.a.yx), -u_input.a.zx), u_input.a.xy, (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(378f + -535f) * _wgslsmith_f_op_f32(trunc(672f))) > -1000f) || false);
    var_0 = _wgslsmith_sub_vec2_i32(-func_2(), _wgslsmith_sub_vec2_i32(~(~u_input.a.xy | ~vec2<i32>(var_0.x, -1i)), -u_input.a.yy));
    var_0 = abs(_wgslsmith_mod_vec2_i32(u_input.a.yw, _wgslsmith_clamp_vec2_i32(abs(u_input.a.xw), u_input.a.zz, -vec2<i32>(u_input.a.x, -1i))));
    var var_1 = u_input.a.yyw;
    var var_2 = 307f;
    return Struct_1(true, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(arg_0, arg_0), _wgslsmith_sub_u32(arg_0, 13229u)), vec2<u32>(max(arg_0, arg_0), max(6046u, arg_0))), vec2<u32>(_wgslsmith_sub_u32(abs(arg_0), 37151u), 1u)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(arg_0.b.x, max(4575u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 1u, 4294967295u), vec4<u32>(arg_0.b.x, 33430u, 2534u, 1u)))), 1u & func_3(1u, Struct_1(arg_0.a, vec2<u32>(4294967295u, arg_0.b.x))));
    let var_1 = ~(~(-(vec3<i32>(u_input.a.x, -1i, u_input.a.x) << (vec3<u32>(50392u, var_0.x, 4294967295u) % vec3<u32>(32u)))) ^ vec3<i32>(u_input.a.x, ~(u_input.a.x << (6922u % 32u)), func_2().x & u_input.a.x));
    var var_2 = abs(_wgslsmith_clamp_i32(-30929i, func_2().x, firstTrailingBit(~var_1.x))) != _wgslsmith_div_i32(countOneBits(~_wgslsmith_mult_i32(var_1.x, u_input.a.x)), u_input.a.x);
    var var_3 = arg_0;
    let var_4 = any(!select(select(select(vec4<bool>(var_3.a, arg_0.a, false, true), vec4<bool>(false, var_3.a, false, var_3.a), arg_0.a), select(vec4<bool>(var_3.a, var_3.a, var_3.a, false), vec4<bool>(var_3.a, true, true, true), vec4<bool>(false, arg_0.a, false, true)), select(vec4<bool>(false, true, true, arg_0.a), vec4<bool>(false, var_3.a, arg_0.a, arg_0.a), arg_0.a)), !vec4<bool>(false, true, arg_0.a, true), select(!vec4<bool>(var_3.a, arg_0.a, false, var_3.a), vec4<bool>(var_3.a, arg_0.a, var_3.a, var_3.a), vec4<bool>(true, true, false, var_3.a))));
    return func_1(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(4167u));
    var_0 = func_1(_wgslsmith_mult_u32(func_3(0u, Struct_1(true, var_0.b)), var_0.b.x));
    var_0 = func_1(14005u);
    var var_1 = vec3<bool>(any(vec2<bool>(true, !all(vec2<bool>(false, var_0.a)))), var_0.a, true);
    var var_2 = Struct_1(true, ~vec2<u32>(~(var_0.b.x >> (4294967295u % 32u)), _wgslsmith_add_u32(var_0.b.x, 23696u)));
    var_0 = Struct_1(false, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(var_0.b.x, func_4(Struct_1(var_0.a, vec2<u32>(4294967295u, var_0.b.x))).b.x), var_0.b.x), func_1(firstLeadingBit(_wgslsmith_div_u32(14646u, 50816u))).b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(max(vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, 72535i, 8919i)), select(vec4<i32>(41331i, 33481i, u_input.a.x, u_input.a.x), vec4<i32>(13059i, 0i, -2147483647i, u_input.a.x), vec4<bool>(var_2.a, false, var_2.a, var_0.a))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + _wgslsmith_f_op_f32(-1205f + 152f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(541f + _wgslsmith_f_op_f32(step(251f, -1192f))))), _wgslsmith_f_op_f32(-1221f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-420f * 1118f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1106f + 897f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1234f, 494f)), _wgslsmith_f_op_f32(ceil(1398f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1305f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-177f, 1286f, 639f) * vec3<f32>(-1316f, -1000f, 702f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(990f, -1511f, -1000f), vec3<f32>(926f, -1403f, -1548f))), false)))));
}

