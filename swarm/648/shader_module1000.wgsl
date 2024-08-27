struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(vec2<i32>(-1i) * -vec2<i32>(1i ^ u_input.a.x, u_input.a.x), min(~vec4<i32>(0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), -1i ^ u_input.a.x, _wgslsmith_sub_i32(-29803i, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x & max(1i, u_input.a.x), -_wgslsmith_clamp_i32(-2147483647i, 13248i, -2147483647i), -13674i)), 1284u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1104f - _wgslsmith_f_op_f32(f32(-1f) * -1289f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(410f, -940f, true)) - 485f)))));
    let var_1 = _wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(floor(507f)));
    var_0 = Struct_2(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -_wgslsmith_add_i32(var_0.a.x, -33864i)), min(u_input.a.yx, var_0.a)), var_0.b, firstTrailingBit(firstLeadingBit(0u)), _wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(994f + 923f) * var_1), var_0.d)));
    let var_2 = vec3<i32>(max(var_0.a.x, -21335i), reverseBits(min(2147483647i, ~reverseBits(var_0.b.x))), 60157i);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d))))));
    return i32(-1i) * -1i;
}

fn func_2(arg_0: u32) -> vec3<f32> {
    let var_0 = Struct_3(Struct_1(-2469f), vec4<u32>(~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), ~u_input.b), 4294967295u, 16663u, 48210u), max(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.a.zz), u_input.a.yz), -(~1i), abs(u_input.a.x), 11528i), vec4<i32>(func_3(), select(_wgslsmith_mult_i32(u_input.a.x, 27253i), -1i, true), countOneBits(0i) | _wgslsmith_add_i32(7283i, u_input.a.x), -7634i)), firstTrailingBit(select(u_input.b, select(vec4<u32>(arg_0, u_input.b.x, 0u, u_input.b.x), vec4<u32>(4294967295u, 25444u, 23686u, 20110u), true), true) & _wgslsmith_mult_vec4_u32(vec4<u32>(23149u, arg_0, 4294967295u, 1u) ^ vec4<u32>(u_input.c, u_input.c, 53203u, 1u), min(u_input.b, u_input.b))));
    var var_1 = (abs(48287u) | ~(59351u ^ _wgslsmith_div_u32(u_input.c, u_input.b.x))) >> (min(var_0.b.x, _wgslsmith_add_u32(~var_0.d.x, arg_0)) % 32u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_0.a.a, var_0.a.a)), 381f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -431f))) * _wgslsmith_f_op_f32(-var_0.a.a)), _wgslsmith_f_op_f32(var_0.a.a - var_0.a.a));
    var var_3 = Struct_1(-406f);
    let var_4 = ~var_0.b.xwy & vec3<u32>(~arg_0, 0u, var_0.d.x);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(479f, var_0.a.a, var_2.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1012f, -711f, -235f), vec3<f32>(511f, -127f, var_0.a.a), false))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = -691f;
    let var_1 = ~_wgslsmith_div_u32(0u, u_input.c);
    var var_2 = vec3<f32>(_wgslsmith_div_f32(var_0, 709f), var_0, -2126f);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_2.x, -774f)), _wgslsmith_f_op_vec3_f32(func_2(1u)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_2.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(607f, var_2.x, 415f) * vec3<f32>(-1237f, var_2.x, var_0))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, -648f, var_0))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, var_0, 209f))), vec3<bool>(true, true, true))))));
    var_2 = vec3<f32>(var_2.x, 567f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(sign(var_2.x))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(511f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a + func_1().a));
    let var_2 = Struct_3(func_1(), vec4<u32>(~(~(~u_input.b.x)), ~u_input.c, 0u, min(~(u_input.b.x << (u_input.c % 32u)), u_input.b.x)), ~abs(select(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, -95328i, u_input.a.x), vec4<bool>(true, true, true, true))), ~vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), ~_wgslsmith_div_u32(u_input.c, 10459u), u_input.b.x, u_input.b.x));
    var_0 = var_2.a;
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_div_u32(1u, u_input.b.x)), 4139u, countOneBits(~1u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a, var_0.a, false)), _wgslsmith_f_op_f32(f32(-1f) * -1506f), var_1.a))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2091f, var_1.a, var_1.a)))))), (vec3<i32>(firstTrailingBit(u_input.a.x), 48964i, u_input.a.x) & vec3<i32>(var_2.c.x, _wgslsmith_mod_i32(-19069i, -1i), -2147483647i)) | (max(~vec3<i32>(var_2.c.x, 2147483647i, var_2.c.x), vec3<i32>(u_input.a.x, -1i, var_2.c.x)) ^ vec3<i32>(u_input.a.x, reverseBits(-1i), ~var_2.c.x)), var_2.c.wy);
}

