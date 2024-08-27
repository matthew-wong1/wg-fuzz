struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = vec4<i32>(countOneBits(0i), -35768i, reverseBits(-48794i), 1i);
    var_0 = abs(vec4<i32>(9852i, ~reverseBits(var_0.x), 25997i, min(0i, -var_0.x)));
    let var_1 = Struct_3(Struct_1(1i, _wgslsmith_add_vec2_u32(min(_wgslsmith_sub_vec2_u32(vec2<u32>(34445u, 6802u), vec2<u32>(1u, 1u)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(26057u, 97317u), vec2<bool>(false, false))), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, u_input.a)), !vec3<bool>(any(vec3<bool>(false, true, false)), true, select(true, true, true))), Struct_2(~var_0.xxz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, _wgslsmith_div_f32(1535f, -134f)))));
    var var_2 = Struct_1(-_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.x & var_1.b.a.x, 0i), -41515i), _wgslsmith_mod_vec2_u32(~(~(var_1.a.b | var_1.a.b)), var_1.a.b), vec3<bool>(all(!var_1.a.c.yz), !(var_1.a.c.x | (var_1.a.b.x <= var_1.a.b.x)), true || !(var_0.x < 2147483647i)));
    var_0 = vec4<i32>(var_0.x, var_2.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~14810i, var_0.x, -var_2.a), vec3<i32>(-1i, firstLeadingBit(var_0.x), ~(-24917i))), _wgslsmith_dot_vec3_i32(countOneBits(min(vec3<i32>(1i, var_0.x, var_1.a.a), vec3<i32>(0i, 0i, var_2.a))), _wgslsmith_add_vec3_i32(var_1.b.a, vec3<i32>(var_0.x, -60662i, var_2.a))), -7036i), var_1.a.a);
    return _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 23598u), var_2.b.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32) -> vec3<f32> {
    var var_0 = ~(~vec3<u32>(u_input.a, u_input.a, func_3()));
    var_0 = max(vec3<u32>(arg_1, 0u, _wgslsmith_clamp_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1, 27257u), vec3<u32>(arg_1, 7170u, 44275u))), _wgslsmith_sub_u32(~var_0.x, _wgslsmith_mod_u32(arg_1, arg_1)), 37506u)), vec3<u32>(arg_1, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1, 76683u), u_input.a), max(arg_1, firstLeadingBit(0u))));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~var_0.x, _wgslsmith_div_u32(arg_1, u_input.a), reverseBits(17701u)) & max(4294967295u, abs(var_0.x)), arg_1, _wgslsmith_sub_u32(~var_0.x, firstTrailingBit(~var_0.x))), ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(arg_1, u_input.a, 52342u)), vec3<u32>(abs(arg_1), u_input.a, var_0.x)));
    var_0 = vec3<u32>(73321u, var_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(select(arg_1, 1u, true), 24296u, u_input.a, _wgslsmith_mod_u32(var_0.x, 1u)), vec4<u32>(u_input.a, firstLeadingBit(u_input.a), arg_1, _wgslsmith_clamp_u32(arg_1, 21974u, 0u)))) >> (vec3<u32>(var_0.x, var_0.x, ~((127454u >> (u_input.a % 32u)) ^ var_0.x)) % vec3<u32>(32u));
    let var_1 = false | any(!vec3<bool>(any(vec3<bool>(true, false, true)), true, true));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2505f, 319f)) - 1000f)), 980f, _wgslsmith_f_op_f32(step(-696f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -858f)))))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(-21626i, firstTrailingBit(u_input.a), 0i));
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-285f - _wgslsmith_f_op_f32(exp2(var_0.x))), -510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -1094f, !arg_2.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-633f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), 149f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + var_0.yy))));
    let var_2 = arg_2.x;
    var var_3 = _wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(12260u, 4294967295u), countOneBits(43440u), u_input.a), vec3<u32>(u_input.a, u_input.a ^ u_input.a, 45444u)), ~(reverseBits(vec3<u32>(u_input.a, 0u, 1u)) >> (~vec3<u32>(u_input.a, 20036u, 33797u) % vec3<u32>(32u)))), vec3<u32>(abs(u_input.a), min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u) >> (vec3<u32>(28339u, u_input.a, 65347u) % vec3<u32>(32u)), vec3<u32>(u_input.a, 4294967295u, u_input.a) & vec3<u32>(u_input.a, 27157u, 1u)), firstLeadingBit(u_input.a)), u_input.a));
    var_3 = vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(20206u), ~(var_3.x ^ 1u)), 27485u, 59168u) | reverseBits(min((vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(2214u, 4294967295u, 1156u) % vec3<u32>(32u))) | vec3<u32>(var_3.x, 1u, var_3.x), countOneBits(vec3<u32>(1u, var_3.x, 137239u))));
    return Struct_3(Struct_1(max(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_div_i32(-12395i, arg_1), arg_1), _wgslsmith_mod_i32(select(1i, 72844i, var_2), countOneBits(arg_1))), reverseBits(abs(firstTrailingBit(var_3.xx))), !(!select(vec3<bool>(false, false, var_2), vec3<bool>(true, false, false), false))), Struct_2(vec3<i32>(firstLeadingBit(arg_1), max(abs(2147483647i), arg_1), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 14676i)), ~vec2<i32>(arg_1, -1i))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.xy - var_0.zy) + vec2<f32>(var_1.x, arg_0)))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    return func_1(_wgslsmith_f_op_f32(f32(-1f) * -877f), reverseBits(arg_0), vec2<bool>(func_1(-345f, func_1(_wgslsmith_f_op_f32(-arg_1.b.b.x), arg_0 >> (arg_1.a.b.x % 32u), arg_1.a.c.zx).b.a.x, vec2<bool>(arg_1.a.c.x, all(vec4<bool>(arg_1.a.c.x, true, false, arg_1.a.c.x)))).a.c.x, _wgslsmith_f_op_f32(-arg_1.b.b.x) != arg_1.b.b.x)).b;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(arg_1.x, 54376u, -45737i)).zy) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1402f, arg_3.x) - _wgslsmith_div_vec2_f32(arg_3.yy, vec2<f32>(525f, 2273f)))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.e.b.b.x * arg_0.b.x), _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-arg_2.e.b.b.x))))));
    var var_1 = arg_2.e;
    let var_2 = select(vec4<i32>(~0i, _wgslsmith_add_i32(~(-1i) >> (~arg_2.e.a.b.x % 32u), -2314i), _wgslsmith_mod_i32(-(1i << (arg_2.d.b.x % 32u)), min(_wgslsmith_mult_i32(var_1.a.a, -1i), arg_0.a.x)), i32(-1i) * -arg_0.a.x), vec4<i32>(arg_2.e.a.a, -(~arg_0.a.x), 2914i, arg_1.x), true);
    let var_3 = arg_2.e.b;
    var_1 = func_1(-760f, ~firstLeadingBit(-25430i), !select(var_1.a.c.yy, vec2<bool>(false, true), true));
    return Struct_3(Struct_1(-(~(~var_2.x)), vec2<u32>(abs(0u), 1u << (0u % 32u)), func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x + var_3.b.x))), countOneBits(~arg_0.a.x), func_1(_wgslsmith_f_op_f32(446f - 727f), _wgslsmith_add_i32(-2147483647i, var_2.x), !vec2<bool>(false, var_1.a.c.x)).a.c.xy).a.c), var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(~(~1i), func_1(945f, 45813i, vec2<bool>(true, true))), countOneBits(vec3<i32>(58623i, firstTrailingBit(19534i), i32(-1i) * -1i)) & reverseBits(~vec3<i32>(58029i, -35337i, 9847i)), Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1497f)) + 1f), _wgslsmith_div_f32(-1194f, _wgslsmith_f_op_f32(f32(-1f) * -243f))), vec3<u32>(4294967295u, u_input.a & 1050u, _wgslsmith_div_u32(1u, u_input.a)) | (~vec3<u32>(u_input.a, u_input.a, 31076u) << (vec3<u32>(1u, 0u, u_input.a) % vec3<u32>(32u))), abs(func_4(~(-14163i), func_1(791f, 0i, vec2<bool>(true, true))).a.x), Struct_1(~1i, vec2<u32>(1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(false, true)))), Struct_3(func_1(_wgslsmith_f_op_f32(184f * 2157f), 0i, vec2<bool>(false, false)).a, Struct_2(firstLeadingBit(vec3<i32>(0i, 22359i, 1i)), vec2<f32>(-212f, 994f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -619f), _wgslsmith_f_op_f32(select(-542f, _wgslsmith_f_op_f32(974f + 1567f), false)), -816f))));
    var var_1 = Struct_1(var_0.a.a, ~var_0.a.b, select(vec3<bool>(any(var_0.a.c), _wgslsmith_dot_vec3_u32(vec3<u32>(17709u, var_0.a.b.x, 7643u), vec3<u32>(1u, 84588u, 0u)) == func_1(var_0.b.b.x, var_0.b.a.x, var_0.a.c.zy).a.b.x, true), var_0.a.c, !var_0.a.c));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.a, -vec3<i32>(var_0.a.a, var_1.a, -1i)), ~(~(-var_0.b.a))), ~vec3<i32>(-var_0.a.a, var_0.b.a.x, var_1.a ^ var_0.b.a.x) >> (_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 44104u, 0u), vec3<u32>(u_input.a, var_1.b.x, var_0.a.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.b.x, u_input.a, var_0.a.b.x), abs(vec3<u32>(43906u, var_0.a.b.x, 1u)))) % vec3<u32>(32u)));
    var var_3 = Struct_1(-func_4(-(var_0.b.a.x << (u_input.a % 32u)), var_0).a.x, ~(~(~(~var_0.a.b))), !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), var_0.b.a.x, var_1.c.zx).a.c);
    let var_4 = vec4<bool>(false, !func_1(var_0.b.b.x, select(_wgslsmith_sub_i32(27214i, -30600i), -21229i, var_3.c.x != false), !vec2<bool>(var_3.c.x, var_1.c.x)).a.c.x, !(var_2 > var_3.a), !var_1.c.x);
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.b.x)) + var_0.b.b.x))), _wgslsmith_f_op_f32(round(func_5(var_0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-7370i, var_2, var_2), _wgslsmith_mod_vec3_i32(var_0.b.a, vec3<i32>(var_2, var_1.a, -3833i))), Struct_4(_wgslsmith_f_op_f32(1000f * var_0.b.b.x), vec3<u32>(4294967295u, 35403u, var_3.b.x) ^ vec3<u32>(u_input.a, 0u, 115726u), -41751i, Struct_1(-37884i, vec2<u32>(0u, 21280u), vec3<bool>(false, var_1.c.x, var_1.c.x)), var_0), vec3<f32>(_wgslsmith_f_op_f32(-1248f - 1820f), -367f, _wgslsmith_div_f32(var_0.b.b.x, var_0.b.b.x))).b.b.x)));
    let var_6 = func_1(var_5.x, var_3.a, func_5(var_0.b, vec3<i32>(-var_1.a, ~_wgslsmith_mult_i32(1i, var_1.a), var_0.a.a | (i32(-1i) * -1i)), Struct_4(var_5.x, vec3<u32>(min(4294967295u, var_3.b.x), 0u, u_input.a), -var_1.a, var_0.a, Struct_3(var_0.a, Struct_2(vec3<i32>(-38430i, -2147483647i, var_1.a), vec2<f32>(var_5.x, -2850f)))), vec3<f32>(671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1771f, -2339f)) * _wgslsmith_f_op_f32(var_5.x - 1044f)), var_5.x)).a.c.zz).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_dot_vec4_u32(max(firstTrailingBit(vec4<u32>(4294967295u, var_3.b.x, 0u, 0u)), ~vec4<u32>(1u, 77616u, var_0.a.b.x, 1u)), vec4<u32>(u_input.a, var_0.a.b.x, 0u, 1u)), 0u), -299f);
}

