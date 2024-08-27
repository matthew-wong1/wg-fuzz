struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_2) -> bool {
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1534f - _wgslsmith_div_f32(1339f, _wgslsmith_f_op_f32(f32(-1f) * -399f))))) * _wgslsmith_f_op_f32(-arg_0.a));
    let var_2 = false;
    var var_3 = arg_0.c;
    var var_4 = ~u_input.a.x;
    return true;
}

fn func_3(arg_0: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_5(reverseBits(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(-8235i, 17705i)), select(vec2<i32>(2147483647i, -26038i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -30310i), vec2<i32>(2147483647i, 0i)), select(arg_0.yz, vec2<bool>(arg_0.x, arg_0.x), arg_0.x)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(9945i, 0i), vec2<i32>(-1i, -24569i))))), Struct_2(537f, 1756f, _wgslsmith_div_vec3_f32(vec3<f32>(-1828f, -1000f, -1628f), vec3<f32>(_wgslsmith_div_f32(-474f, -705f), -1479f, _wgslsmith_f_op_f32(min(108f, 1000f))))), 1i);
    var var_1 = 704f;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1040f, var_0.b.b)), _wgslsmith_f_op_f32(var_0.b.c.x - var_0.b.a)))), _wgslsmith_f_op_f32(-var_0.b.c.x));
    var var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a)), _wgslsmith_div_f32(var_0.b.c.x, -2119f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1272f)) * var_0.b.c.x), _wgslsmith_f_op_f32(-var_0.b.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1021f, var_2.a, 347f, var_2.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, var_2.c.x, -1000f, var_0.b.c.x))))), true)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b, -1024f, var_0.b.a, var_2.c.x)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-696f, var_0.b.b, var_0.b.b, -1000f))), select(vec4<bool>(true, arg_0.x, false, arg_0.x), select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(false, true, false, false))))))));
    return !arg_0.xz;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<u32>) -> bool {
    var var_0 = !(!vec4<bool>(true, false != (1u > arg_2.x), all(vec4<bool>(arg_0.x, arg_0.x, true, true)) != false, arg_0.x));
    var var_1 = any(!vec4<bool>(!arg_0.x, false, true, all(arg_0)));
    var_0 = !(!select(vec4<bool>(var_0.x && false, func_2(Struct_2(-691f, 871f, arg_1.c)), !var_0.x, arg_0.x), select(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.x, true, true, true)), !vec4<bool>(arg_0.x, var_0.x, false, false), true), true));
    let var_2 = vec3<bool>(true, any(func_3(vec3<bool>(true, arg_0.x, true))), true);
    let var_3 = _wgslsmith_sub_vec4_i32(~(-vec4<i32>(2147483647i, 5296i, 34031i, -29352i)), -vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(46666i, -926i, 45539i, -41081i), vec4<i32>(-2147483647i, -10776i, -4473i, -15638i)), countOneBits(-52138i), -1i)) ^ ~vec4<i32>(1i, 1i, 1i, 1i);
    return !any(!select(vec2<bool>(false, false), !arg_0.yz, var_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var_0 = -21795i;
    var_0 = 2147483647i;
    var var_1 = Struct_3(true & any(vec3<bool>(true, func_1(vec3<bool>(true, true, true), Struct_2(113f, 2432f, vec3<f32>(-843f, -579f, -1039f)), u_input.a.wz), false)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, -522f, -817f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-458f, -889f, 231f))), vec3<f32>(1000f, -642f, 1078f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1387f)))))), ~_wgslsmith_dot_vec4_u32(min(u_input.a, u_input.a), u_input.a)), -_wgslsmith_mod_i32(-18463i, _wgslsmith_mult_i32(select(-15006i, 16405i, true), 1i)), -15577i);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(var_1.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.b, var_1.b.b)) * _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -182f))), _wgslsmith_f_op_f32(-var_1.b.b));
    var_0 = -53805i;
    var_0 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(-var_1.d, -52608i, var_1.c | 0i), ~(~vec3<i32>(2147483647i, 44181i, 64796i))) ^ var_1.c;
    var var_3 = !select(!select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_1.a, false, false), select(vec3<bool>(true, true, false), vec3<bool>(var_1.a, var_1.a, var_1.a), true)), select(select(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, var_1.a), vec3<bool>(true, var_1.a, false)), (var_1.a && false) | var_1.a), vec3<bool>(true, func_3(!vec3<bool>(var_1.a, false, var_1.a)).x, false));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(413f, var_2.x)) + _wgslsmith_div_f32(var_1.b.a.x, var_1.b.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1125f)))), _wgslsmith_f_op_vec3_f32(var_1.b.a * var_1.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~vec4<u32>(4294967295u, u_input.a.x & 1u, 1u, var_1.b.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_4.c.xy))), var_1.b.a, var_4.c.yz, vec3<u32>(11192u, select(_wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.b.c, u_input.a.x), 1u), 12774u, var_1.a), _wgslsmith_add_u32(_wgslsmith_mod_u32(abs(47211u), ~1u), abs(u_input.a.x))));
}

