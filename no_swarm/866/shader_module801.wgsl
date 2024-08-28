struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: u32,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<u32> {
    var var_0 = arg_0.c;
    let var_1 = arg_3 <= firstTrailingBit(_wgslsmith_sub_u32(arg_3, 18266u));
    var_0 = -32643i;
    var var_2 = ~firstLeadingBit(0i) >> (arg_3 % 32u);
    var var_3 = min(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, ~arg_3), max(u_input.e, vec2<u32>(arg_3, arg_3)) >> (~(~vec2<u32>(1u, 0u)) % vec2<u32>(32u))), vec2<u32>(u_input.e.x, u_input.d));
    return vec3<u32>(abs(_wgslsmith_add_u32(var_3.x, 47335u | firstTrailingBit(4294967295u))), var_3.x, 0u);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = any(select(arg_2.e.zx, arg_2.e.yy, true));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(arg_2.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -1000f, arg_2.b.x, arg_0), arg_2.a, vec4<bool>(arg_2.e.x, true, arg_2.d, false)))))))));
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, u_input.d, 89894u), vec3<u32>(u_input.e.x, u_input.e.x, 0u)) | ~(~vec3<u32>(25493u, u_input.d, u_input.e.x)), min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, u_input.d), vec3<u32>(959u, u_input.e.x, u_input.d)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, u_input.e.x, u_input.d), func_3(Struct_1(var_1, vec4<f32>(1008f, 195f, -574f, var_1.x), 0i, true, vec3<bool>(true, true, var_0)), arg_2, Struct_1(vec4<f32>(990f, var_1.x, arg_0, -467f), var_1, 1i, true, arg_2.e), 4461u)))), _wgslsmith_div_vec3_u32(vec3<u32>(36361u & u_input.e.x, _wgslsmith_add_u32(u_input.d, 6679u), u_input.e.x >> (u_input.e.x % 32u)), vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.d), u_input.e.x, 22592u)) ^ abs(select(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(0u, 4294967295u, u_input.d), false) << (select(vec3<u32>(u_input.d, u_input.d, u_input.e.x), vec3<u32>(1u, u_input.e.x, u_input.d), false) % vec3<u32>(32u))));
    let var_3 = arg_2;
    var_2 = abs(vec3<u32>(~(~select(1u, var_2.x, arg_2.d)), u_input.d & var_2.x, var_2.x));
    return !select(vec4<bool>(true, any(vec2<bool>(true, var_3.d)) || all(vec3<bool>(var_0, arg_2.e.x, false)), true, false), select(vec4<bool>(true, any(var_3.e.yx), false, !arg_2.d), select(!vec4<bool>(arg_2.e.x, arg_2.d, false, arg_2.e.x), vec4<bool>(false, arg_2.d, var_3.e.x, arg_2.e.x), vec4<bool>(var_0, false, false, var_0)), vec4<bool>(any(vec4<bool>(true, var_3.d, arg_2.e.x, var_0)), 2147483647i == u_input.c.x, false, all(arg_2.e))), !arg_2.d);
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = select(select(func_2(988f, ~1i, Struct_1(arg_0.a, _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(arg_0.b.x, 660f, arg_0.b.x, arg_0.b.x)), u_input.c.x, true, arg_0.e)), vec4<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_0.e.x, true, true), false)), true, -1834f > _wgslsmith_f_op_f32(sign(454f)), _wgslsmith_f_op_f32(-2286f * arg_0.a.x) < arg_0.b.x), arg_0.d), vec4<bool>(any(select(func_2(arg_0.a.x, 11869i, Struct_1(arg_0.a, arg_0.a, u_input.b, arg_0.e.x, arg_0.e)).xzz, arg_0.e, any(vec4<bool>(true, arg_0.e.x, arg_0.d, arg_0.d)))), func_2(arg_0.b.x, -u_input.a | abs(arg_0.c), arg_0).x, arg_0.d, arg_0.a.x >= 1143f), select(vec4<bool>(false, !(!arg_0.d), any(!vec4<bool>(arg_0.d, arg_0.e.x, arg_0.d, false)), arg_0.e.x), vec4<bool>(true, !arg_0.e.x == any(vec2<bool>(arg_0.d, arg_0.d)), !arg_0.e.x, select(arg_0.d, arg_0.e.x, false) | arg_0.d), false));
    var var_1 = arg_0;
    return any(vec2<bool>(all(!var_0) && var_1.e.x, var_1.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(func_1(Struct_1(vec4<f32>(1217f, 1202f, 851f, -722f), vec4<f32>(2040f, -2208f, -617f, 1000f), u_input.b, false, vec3<bool>(false, false, true))) != any(vec4<bool>(true, true, true, false)), true, false), !vec3<bool>(select(true, false, true), true, true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(349f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f + -618f) + _wgslsmith_div_f32(2725f, 471f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1269f - -151f), _wgslsmith_f_op_f32(-984f * -454f))))));
    var var_2 = firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(u_input.a, i32(-1i) * -7628i), u_input.a, abs(42271i), (i32(-1i) * -12863i) << (abs(_wgslsmith_sub_u32(1u, u_input.e.x)) % 32u)));
    let var_3 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1808f, var_1)) - _wgslsmith_f_op_f32(select(1515f, var_1, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 * var_1), _wgslsmith_f_op_f32(var_1 * 947f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1617f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -696f) * 1150f), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(-458f * var_1))))), var_2.x, true, !vec3<bool>(!var_0.x, any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true));
    var_2 = ~(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, -25201i, u_input.b), u_input.c), _wgslsmith_mod_i32(-8601i, -1i), -var_2.x, _wgslsmith_mod_i32(u_input.b, var_2.x))) | (((firstTrailingBit(vec4<i32>(1i, 9051i, var_2.x, var_2.x)) | vec4<i32>(u_input.c.x, var_3.c, u_input.a, 4135i)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, 1i, u_input.c.x), vec4<i32>(u_input.a, -35808i, -27043i, var_2.x)) << (select(vec4<u32>(1u, u_input.e.x, 24811u, 113594u), vec4<u32>(u_input.e.x, u_input.e.x, u_input.d, 1u), vec4<bool>(var_3.e.x, true, false, true)) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 38160i, -62796i, 2147483647i), abs(vec4<i32>(u_input.c.x, u_input.b, 1i, -2147483647i)), -vec4<i32>(u_input.c.x, var_2.x, 53655i, u_input.b)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 36216i, var_3.c, var_2.x), vec4<i32>(var_2.x, var_3.c, u_input.b, u_input.a)), 1i, _wgslsmith_div_i32(var_3.c, var_3.c), 0i)));
    let var_4 = var_3;
    var var_5 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.a.x)) - var_4.b.x)), _wgslsmith_f_op_f32(-161f + -1277f), var_4.b.x, -619f), vec4<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(f32(-1f) * -792f)), -125f, 497f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -265f))), _wgslsmith_f_op_f32(select(var_3.a.x, var_3.a.x, !var_0.x))))), _wgslsmith_sub_i32(-28023i, select(~(-2147483647i), 1i, all(var_0.zy)) ^ -u_input.c.x), true, !var_4.e);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~(-u_input.c.x))), vec2<u32>(36833u, max(_wgslsmith_mult_u32(1u, ~0u), ~u_input.d)), 855f, u_input.e.x);
}

