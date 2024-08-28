struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), -906f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-965f - _wgslsmith_div_f32(-1181f, 1696f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(882f, 800f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_1 = !vec3<bool>(!(_wgslsmith_mult_i32(u_input.e, u_input.b.x) >= 1i), true, true);
    var_1 = select(vec3<bool>(var_1.x, true, true), vec3<bool>(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), !vec3<bool>(var_1.x, true, var_1.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(false, true, true), true))), all(select(!vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), !vec3<bool>(false, false, var_1.x))), !(abs(u_input.d) < ~0u)), vec3<bool>(select(var_1.x, 1435f != _wgslsmith_f_op_f32(-var_0.x), select(false, true, select(var_1.x, true, var_1.x))), var_1.x, false));
    let var_2 = Struct_1(var_0.x, select(u_input.a, u_input.a, !(!(!vec3<bool>(true, true, var_1.x)))), ~((_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 6954i, u_input.e)) | (vec3<i32>(u_input.e, u_input.e, 48955i) ^ vec3<i32>(1i, -2147483647i, u_input.e))) | (u_input.b | u_input.b)));
    var var_3 = _wgslsmith_sub_i32(u_input.e, u_input.b.x);
    return -1i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(u_input.c, _wgslsmith_mult_u32(u_input.a.x, 4294967295u & u_input.d)), ~u_input.d, _wgslsmith_clamp_u32(u_input.a.x, u_input.d, 3547u));
    var var_1 = -32560i;
    let var_2 = -977f;
    var var_3 = any(vec3<bool>(((u_input.b.x | 27460i) | u_input.b.x) > -2147483647i, (~u_input.b.x | ~(-5883i)) == func_3(), select(var_0.x != abs(0u), 0u >= firstLeadingBit(var_0.x), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)))));
    let var_4 = !select(select(vec2<bool>(any(vec3<bool>(true, false, false)), var_2 < var_2), vec2<bool>(true, any(vec4<bool>(true, false, false, true))), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true & select(true, false, true)), false);
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2 * -324f), _wgslsmith_f_op_f32(max(var_2, 1754f)), _wgslsmith_f_op_f32(1060f * -1008f)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2)) - _wgslsmith_f_op_f32(sign(var_2))), u_input.a, firstLeadingBit(-min(vec3<i32>(arg_0, 2147483647i, 0i), u_input.b))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-u_input.b.zz, _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, 0i), vec2<i32>(arg_0, arg_0)), vec2<i32>(1i, arg_0)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), u_input.b.zz), -35229i)), 0i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0, 0i, u_input.b.x, 0i), vec4<i32>(u_input.b.x, u_input.e, -2147483647i, u_input.b.x), true) ^ -vec4<i32>(u_input.e, arg_0, 53316i, 0i), vec4<i32>(u_input.e, -2147483647i, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.e, arg_0, u_input.b.x)), _wgslsmith_add_i32(arg_0, -1i))), func_3() & firstLeadingBit(i32(-1i) * -1i)), reverseBits(-1i));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> Struct_2 {
    return func_2(-2147483647i);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> vec3<u32> {
    let var_0 = countOneBits(abs(vec4<u32>(firstTrailingBit(arg_0.b.b.x), _wgslsmith_clamp_u32(~u_input.d, ~u_input.a.x, arg_0.b.b.x), u_input.c, 39071u)));
    var var_1 = _wgslsmith_sub_u32(var_0.x, arg_0.b.b.x) ^ ~select(abs(1u), 0u, !(-723f > arg_0.b.a));
    var var_2 = !((max(73956u, var_0.x) | abs(1u)) != ~(var_0.x | max(var_0.x, arg_0.b.b.x)));
    let var_3 = arg_1 != (true || !(!any(vec4<bool>(arg_1, arg_1, arg_1, false))));
    var_1 = (_wgslsmith_add_u32(4294967295u, arg_0.b.b.x | _wgslsmith_mult_u32(24311u, 0u)) >> (~u_input.c % 32u)) & arg_0.b.b.x;
    return _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_mod_u32(4294967295u, 39185u), firstLeadingBit(arg_0.b.b.x >> (~0u % 32u)), ~select(~var_0.x, 14181u, all(vec4<bool>(var_3, arg_1, var_3, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-521f, 1395f))), _wgslsmith_add_vec3_u32(func_4(func_1(Struct_2(vec3<f32>(1500f, 1547f, -793f), Struct_1(-1512f, u_input.a, vec3<i32>(u_input.e, u_input.e, -35305i)), vec4<i32>(u_input.e, u_input.e, -2147483647i, u_input.e), -1i), true, vec3<bool>(true, true, true), ~1u), true, u_input.b.x & -8430i), u_input.a), u_input.b);
    var var_1 = var_0.a;
    var var_2 = 1i;
    var var_3 = var_0;
    var_3 = func_2(abs(1i)).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -232f) * var_3.a), _wgslsmith_f_op_vec3_f32(func_1(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-224f, -975f, 1000f))), func_2(2147483647i).b, ~vec4<i32>(u_input.b.x, var_0.c.x, -33i, -22339i), -63442i | u_input.e), all(vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(false, false, true), any(vec3<bool>(false, false, true))), var_0.b.x ^ var_3.b.x).a - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_3.a - var_0.a), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(sign(-799f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -1463f, -915f) - vec3<f32>(-1767f, var_3.a, var_3.a)))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(46066u, _wgslsmith_dot_vec2_u32(countOneBits(u_input.a.yz), ~vec2<u32>(u_input.a.x, u_input.c))), _wgslsmith_add_u32(100281u, 1u)), var_0.c.x, var_3.c.x);
}

