struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>) -> f32 {
    let var_0 = u_input.b;
    var var_1 = arg_1.wx;
    let var_2 = !vec2<bool>(any(vec3<bool>(var_1.x > arg_1.x, all(vec4<bool>(true, false, false, false)), any(vec2<bool>(true, true)))), !all(vec4<bool>(true, false, false, false)));
    let var_3 = max(vec2<i32>(-2147483647i << (_wgslsmith_dot_vec3_u32(u_input.d.zwy, ~vec3<u32>(1u, u_input.d.x, arg_0)) % 32u), 1i), ~(-u_input.e.zy));
    var var_4 = _wgslsmith_mult_i32(0i >> (firstLeadingBit(_wgslsmith_mod_u32(~arg_0, _wgslsmith_mult_u32(28585u, 70530u))) % 32u), 2147483647i);
    return arg_1.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~(reverseBits(vec2<u32>(15792u, u_input.d.x)) | u_input.d.zz), ~_wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d.yw), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), u_input.d.xw))), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(51678u, u_input.d.x), min(u_input.d.x, 4294967295u)), arg_0.x) << (arg_0.yz % vec2<u32>(32u)));
    var var_1 = _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -20619i, -2147483647i, -2147483647i), u_input.e), u_input.b.x)) | ~_wgslsmith_dot_vec4_i32(u_input.e, max(-u_input.e, ~vec4<i32>(u_input.a, 37674i, u_input.c, u_input.a)));
    var var_2 = -383f;
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(27665u, ~u_input.d.x), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(firstTrailingBit(arg_0.x)), ~u_input.d.x), vec2<u32>(var_0.x, _wgslsmith_clamp_u32(arg_0.x, 56442u, ~u_input.d.x))));
    var_2 = 186f;
    return 4294967295u;
}

fn func_1() -> u32 {
    var var_0 = u_input.d.zw;
    let var_1 = (0u | u_input.d.x) << (abs(u_input.d.x) % 32u);
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_add_u32(var_0.x, 1u), max(abs(abs(26322u)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 81372u, 0u, 38754u), u_input.d), u_input.d)), var_0.x, u_input.d.x), reverseBits(select(var_1, u_input.d.x, select(true, true, false) | true)));
    var var_3 = 977f;
    var var_4 = Struct_1(vec4<u32>(4294967295u | var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_1), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a.x, 1u), u_input.d.wz), ~u_input.d.yy)), func_3(var_2.a.www, vec3<f32>(_wgslsmith_f_op_f32(func_2(var_2.b, vec4<f32>(-612f, -819f, 1210f, 918f))), _wgslsmith_f_op_f32(round(-161f)), _wgslsmith_div_f32(1025f, 1560f))), countOneBits(~var_1)), ~var_2.a.x);
    return 0u;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(4294967295u, firstLeadingBit(17340u)), _wgslsmith_mult_u32(91091u, u_input.d.x), u_input.d.x, ~countOneBits(u_input.d.x & 108160u)), ~select(firstLeadingBit(_wgslsmith_sub_u32(44326u, 39543u)), ~_wgslsmith_mult_u32(u_input.d.x, 32480u), _wgslsmith_div_u32(arg_1, 41068u) < u_input.d.x));
    var var_1 = firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(arg_1, ~arg_1, ~37494u), firstLeadingBit(abs(36074u)), 1u << (u_input.d.x % 32u)), abs(reverseBits(var_0.a.yyy))));
    var_1 = ~max(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b, u_input.d.x, 25208u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1, u_input.d.x, 0u), var_0.a.xxy)), ~vec3<u32>(arg_1, 4294967295u, var_0.a.x)), min(~u_input.d.yyy, abs(abs(vec3<u32>(57405u, 78106u, arg_1)))));
    var_1 = vec3<u32>(4294967295u, reverseBits(var_0.b), arg_1);
    var var_2 = Struct_5(-2147483647i, all(vec3<bool>(!(var_0.a.x >= 11001u), true, false)), select(vec4<bool>(arg_0 < -268f, true, true, _wgslsmith_f_op_f32(arg_0 - 133f) == _wgslsmith_f_op_f32(ceil(arg_0))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -1762f >= arg_0), vec4<bool>(false, all(vec2<bool>(true, false)), select(true, false, true), true), all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true)), vec2<f32>(_wgslsmith_f_op_f32(round(arg_0)), -170f), reverseBits(~u_input.d.x));
    return var_0;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    return Struct_3(u_input.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1275f));
    var var_1 = func_5(_wgslsmith_div_i32(-2147483647i, -1i >> (_wgslsmith_div_u32(u_input.d.x, 0u) % 32u)) >> (~(~0u) % 32u), func_4(_wgslsmith_f_op_f32(-856f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1255f)) - _wgslsmith_f_op_f32(-2208f - 1843f))), func_1(), vec2<i32>(_wgslsmith_add_i32(u_input.c, ~u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.e.x, 59193i), u_input.e.yyz), ~vec3<i32>(u_input.c, u_input.c, -18288i))), ~max(firstLeadingBit(u_input.c), ~u_input.c)), false);
    var var_2 = Struct_5(var_1.a.x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(true, true, true)), false, all(vec4<bool>(false, false, false, true)), any(vec3<bool>(false, true, false))), !any(vec4<bool>(false, false, false, false)))), vec4<bool>(true, any(vec3<bool>(true, true, true)), !(all(vec3<bool>(true, true, false)) && true), true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -328f) * _wgslsmith_f_op_f32(f32(-1f) * -1665f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1740f, -1454f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1308f, -1242f), vec2<f32>(-518f, -187f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1401f, 594f)))))), 4467u & _wgslsmith_mult_u32(u_input.d.x, select(65877u, 0u, true)));
    var var_3 = -var_1.a.yxw;
    var var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-767f * 177f) + 1387f)), var_2.e, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(-1i), 1i), min(~u_input.e.wx, u_input.b))), reverseBits(firstLeadingBit(-44475i)));
    let var_5 = vec4<i32>(-var_3.x, u_input.a, var_3.x, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(36165i, 29661i), -32627i), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 47369i), vec2<i32>(var_2.a, var_3.x))), _wgslsmith_dot_vec2_i32(var_3.yz, vec2<i32>(u_input.c, -23700i) ^ vec2<i32>(var_1.a.x, var_1.a.x)), 37520i)));
    var var_6 = Struct_5(var_1.a.x, true, !var_2.c, _wgslsmith_f_op_vec2_f32(sign(var_2.d)), ~1388u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(694f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(0u, vec4<f32>(1692f, var_6.d.x, -472f, var_2.d.x))), var_2.d.x)))), var_2.d.x)), select(_wgslsmith_div_u32(_wgslsmith_sub_u32(~var_4.b, ~var_4.b), 9711u), min(~countOneBits(0u), var_4.b), all(!(!vec2<bool>(var_2.c.x, false)))));
}

