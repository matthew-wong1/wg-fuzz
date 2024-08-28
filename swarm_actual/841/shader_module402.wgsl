struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-countOneBits(vec4<i32>(2147483647i, -17785i, 2147483647i, 31697i)), ~vec4<i32>(-2147483647i, -7868i, -12417i, 3556i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(-57739i, -22694i, 2147483647i, -24681i))), countOneBits(countOneBits(vec4<i32>(-1i, 23573i, -36460i, -2147483647i))) >> ((_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, 0u), vec4<u32>(2439u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.b, u_input.c, u_input.a)) ^ vec4<u32>(45911u, 0u, 4294967295u, 1u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(691i, 87595i), ~(-39995i)), abs(_wgslsmith_clamp_i32(0i, 1i, 45984i))), -firstLeadingBit(~1i), min(43191i, ~(~2147483647i)), 2147483647i));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), ~vec2<i32>(0i, var_0)), vec2<i32>(_wgslsmith_div_i32(var_0, 26129i), firstLeadingBit(var_0)), true), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_0, -17536i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, 2797i), vec2<i32>(var_0, -1i)))), select(var_0, var_0, true), firstLeadingBit(-1i));
    var var_2 = Struct_5(Struct_4(_wgslsmith_mult_i32(-var_0, 1i), _wgslsmith_add_u32(~(u_input.b | u_input.a), 18521u), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 0u, 1u, 0u), select(vec4<u32>(u_input.c, u_input.c, u_input.a, 4294967295u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), true)), select(_wgslsmith_add_vec4_u32(vec4<u32>(7443u, u_input.b, 1u, 15240u), vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c)), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.c), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-266f * -573f)))), Struct_3(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 10065i), var_1.zy), -53504i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1570f)))));
    var var_3 = Struct_2(Struct_1(vec3<f32>(-653f, _wgslsmith_f_op_f32(round(1395f)), 1f), firstLeadingBit(vec2<i32>(-1i ^ var_1.x, var_0)), countOneBits(-vec4<i32>(var_1.x, var_0, var_2.c.a, -34420i)) << (select(_wgslsmith_clamp_vec4_u32(var_2.a.c, vec4<u32>(var_2.a.b, 1u, var_2.a.c.x, 38810u), var_2.a.c), ~var_2.a.c, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))) % vec4<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.a.c.www, ~(var_2.a.c.xwy >> (vec3<u32>(var_2.a.b, 67259u, u_input.b) % vec3<u32>(32u)))), ~(~(~var_2.a.b))));
    let var_4 = any(vec4<bool>(true && (584f < _wgslsmith_f_op_f32(var_2.c.b - -128f)), any(vec3<bool>(true, true, true)), max(_wgslsmith_mod_u32(1u, var_2.a.c.x), var_2.a.b) > var_3.b.x, false));
    return _wgslsmith_div_f32(var_2.b, -767f);
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1929f) * _wgslsmith_div_f32(1284f, -1981f)), _wgslsmith_f_op_f32(290f * -297f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(1545f, 1121f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1689f - _wgslsmith_f_op_f32(ceil(-123f)))), _wgslsmith_f_op_f32(274f + 2289f)));
    let var_1 = all(select(!vec4<bool>(true, true, false | arg_0, true), !vec4<bool>(arg_0, false, any(vec4<bool>(false, true, arg_0, true)), all(vec3<bool>(arg_0, false, arg_0))), !(any(vec3<bool>(arg_0, false, false)) | arg_0)));
    var var_2 = var_0.x;
    var var_3 = !((0u > ~(~u_input.c)) == all(!vec4<bool>(arg_0, arg_0, var_1, arg_0)));
    var var_4 = Struct_5(Struct_4(-19179i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 55371u, u_input.a), vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)), u_input.c, ~u_input.c) & (1u ^ firstLeadingBit(u_input.c)), vec4<u32>(u_input.b ^ 77587u, _wgslsmith_mod_u32(u_input.c, u_input.c), _wgslsmith_add_u32(65458u, u_input.c), 4294967295u) ^ (~vec4<u32>(u_input.c, u_input.a, u_input.c, 1u) & select(vec4<u32>(u_input.b, u_input.a, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.a), vec4<bool>(true, false, false, var_1)))), -633f, Struct_3(min(max(i32(-1i) * -1i, 1i), countOneBits(select(-615i, 31476i, var_1))), _wgslsmith_f_op_f32(round(1011f))));
    return -1000f;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> Struct_3 {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(357f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(true)), 1401f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1313f, 128f), _wgslsmith_f_op_f32(1220f * -578f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1190f - _wgslsmith_f_op_f32(-1838f + 512f))))));
    var var_1 = 4960u;
    var_1 = 0u;
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1113f, 462f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(939f, 776f)))))));
    let var_2 = _wgslsmith_f_op_f32(func_2(!(!arg_2.x)));
    return Struct_3(~(abs(_wgslsmith_add_i32(1i, arg_1)) ^ arg_1), _wgslsmith_f_op_f32(round(267f)));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = ~min(abs(9322i), -(~(arg_2.a >> (u_input.b % 32u))));
    let var_1 = ~_wgslsmith_add_u32(61455u, _wgslsmith_mult_u32(48304u, ~(3647u & u_input.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(369f)) + _wgslsmith_f_op_f32(-arg_2.b)), -539f)));
    var_2 = vec2<f32>(464f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - arg_2.b)), -1000f) - arg_2.b));
    let var_3 = func_1(~vec2<u32>(var_1, var_1), arg_2.a, vec3<bool>(arg_1, arg_0.x, !(_wgslsmith_f_op_f32(max(var_2.x, arg_2.b)) != var_2.x)), ~select(~vec4<u32>(u_input.c, var_1, 60963u, u_input.c), ~vec4<u32>(var_1, u_input.b, 4294967295u, u_input.b), true) | countOneBits(~abs(vec4<u32>(3053u, 9780u, var_1, u_input.c))));
    return vec3<bool>(!all(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true))), false, any(select(select(vec3<bool>(arg_0.x, arg_1, arg_1), vec3<bool>(arg_1, arg_0.x, false), select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_0.x, arg_1, arg_0.x), vec3<bool>(false, false, true))), !select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, arg_0.x, arg_1)), vec3<bool>(arg_0.x & arg_0.x, arg_1, arg_1))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(~4233i, -87655i), -31591i), arg_1.a);
    var var_1 = _wgslsmith_div_f32(-1195f, _wgslsmith_f_op_f32(-arg_1.b));
    var var_2 = 1i;
    let var_3 = ~firstTrailingBit(max(vec4<u32>(~u_input.a, abs(35530u), ~33897u, ~u_input.a), vec4<u32>(u_input.b, u_input.b, ~u_input.a, u_input.a >> (0u % 32u))));
    var_2 = var_0.x;
    return Struct_2(arg_2, max(abs(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_3.zz, vec2<u32>(u_input.a, var_3.x)), abs(vec2<u32>(1u, 4294967295u)))), var_3.xx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(5192i, ~(-24162i));
    var var_1 = func_5(any(select(vec3<bool>(all(vec2<bool>(true, true)), 30256u >= u_input.b, any(vec2<bool>(true, false))), vec3<bool>(all(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, true, false))), func_4(vec2<bool>(true, true), true, func_1(vec2<u32>(u_input.a, u_input.b), -3248i, vec3<bool>(true, true, true), vec4<u32>(0u, 4294967295u, u_input.c, 1u))))), func_1(vec2<u32>(u_input.c, u_input.b), firstTrailingBit(~(i32(-1i) * -2147483647i)), vec3<bool>(true, true, true), ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 14854u, u_input.b, 4294967295u), vec4<u32>(0u, 4294967295u, 28940u, 117473u)) ^ countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, u_input.c)))), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-710f, -644f, 249f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(761f, -151f, -1106f)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 23487i), vec2<i32>(-48584i, 0i)) >> (select(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, u_input.b), false) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-1i, 66661i) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), ~vec2<i32>(-59272i, 0i)), ~(-vec2<i32>(-9865i, 24638i))), vec4<i32>(~1i, 1i, -abs(0i), 1i)), select(false, true, any(vec2<bool>(true, true))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.a.b.x, var_1.a.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), var_1.a.b)), var_1.a.c.x), _wgslsmith_mod_u32(var_1.b.x, 1u), ~vec4<u32>(1u, ~37697u, 1u, 0u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c, var_1.b.x), -3757i, vec3<bool>(true, true, true), ~vec4<u32>(var_1.b.x, 79778u, 4294967295u, u_input.c)).b + _wgslsmith_f_op_f32(f32(-1f) * -791f)))), Struct_3(var_1.a.c.x, var_1.a.a.x));
    var var_3 = func_4(select(vec2<bool>(true, true), vec2<bool>(func_4(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(false, false, true), func_1(var_2.a.c.yw, var_2.c.a, vec3<bool>(false, false, false), vec4<u32>(45067u, var_1.b.x, var_2.a.c.x, 4294967295u))).x, true), vec2<bool>(func_4(vec2<bool>(true, true), false, func_1(vec2<u32>(55594u, 23443u), var_2.a.a, vec3<bool>(true, false, false), var_2.a.c)).x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1107f), var_2.b) >= _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(true)), var_1.a.a.x))), var_2.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a.a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(964f, -2233f, 1040f), var_1.a.a)))), _wgslsmith_f_op_vec3_f32(select(var_1.a.a, _wgslsmith_f_op_vec3_f32(-func_5(true, Struct_3(var_1.a.c.x, var_2.b), Struct_1(vec3<f32>(var_2.c.b, 1968f, 624f), vec2<i32>(0i, var_2.a.a), var_1.a.c), false).a.a), any(vec4<bool>(var_3.x, var_3.x, false, var_3.x))))))));
    var_3 = vec3<bool>(!var_3.x, !any(vec3<bool>(true | var_3.x, all(vec4<bool>(var_3.x, false, var_3.x, false)), any(vec4<bool>(false, var_3.x, var_3.x, true)))), false);
    let var_5 = func_5(var_3.x, Struct_3(_wgslsmith_mod_i32(max(-76934i, func_5(true, Struct_3(2147483647i, var_1.a.a.x), var_1.a, var_3.x).a.b.x), 1i), _wgslsmith_div_f32(1306f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a.a.x))))), var_1.a, var_3.x).a;
    var_1 = func_5(all(!vec3<bool>(!var_3.x, var_3.x & var_3.x, false)), Struct_3(firstLeadingBit(var_5.c.x), 1000f), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.x, _wgslsmith_div_f32(127f, -819f), 877f)), var_5.c.yy, _wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, 35705i, var_2.a.a, -2143i), min(vec4<i32>(var_1.a.b.x, var_2.c.a, var_2.c.a, var_1.a.b.x), abs(vec4<i32>(5280i, var_5.b.x, var_5.b.x, 21195i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.a.x))) <= _wgslsmith_f_op_f32(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.c.yw, (vec2<i32>(var_2.a.a, var_1.a.b.x) << (~countOneBits(vec2<u32>(var_1.b.x, 0u)) % vec2<u32>(32u))) ^ abs(~vec2<i32>(var_5.c.x, -1i)), ~_wgslsmith_div_i32(-2147483647i, -24245i), -464f);
}

