struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(min(-1i, -(~71218i)), u_input.b);
    return Struct_1(-301f, _wgslsmith_f_op_f32(arg_0.b + -565f), vec2<bool>(true, true));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: bool) -> vec3<f32> {
    var var_0 = !arg_1.x;
    var_0 = select(arg_2, min(11178u, _wgslsmith_mult_u32(countOneBits(37438u), arg_0.a ^ 38191u)) <= _wgslsmith_mult_u32(0u, u_input.a), any(arg_1));
    var var_1 = !arg_1.yxw;
    var_0 = select(arg_0.c.c.x, true, true) && any(select(!vec4<bool>(var_1.x, false, arg_2, arg_1.x), arg_1, select(select(vec4<bool>(arg_1.x, false, true, false), vec4<bool>(arg_0.c.c.x, false, var_1.x, true), true), arg_1, !arg_0.c.c.x)));
    var var_2 = Struct_3(abs(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(52283i, u_input.b, u_input.b), firstTrailingBit(u_input.b), u_input.b), u_input.b, select(u_input.b, -46238i << (u_input.a % 32u), func_1(Struct_1(-561f, 1000f, vec2<bool>(arg_2, true))).c.x), firstTrailingBit(abs(18436i)))), vec4<bool>(true, var_1.x, !arg_1.x, !arg_2), vec3<i32>(-11359i & _wgslsmith_sub_i32(49230i, -u_input.b), 15596i, 47i));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b * -501f), _wgslsmith_f_op_f32(round(arg_0.b)), arg_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1933f, 128f, arg_0.c.a), vec3<f32>(1495f, 1000f, arg_0.b), select(var_2.b.yzx, vec3<bool>(true, var_2.b.x, arg_0.c.c.x), arg_2))), select(var_2.b.zyz, var_2.b.zzy, !arg_1.zyz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b + arg_0.c.b), -1555f, _wgslsmith_f_op_f32(-706f + -528f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.b, arg_0.b, arg_0.b)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_2(~(_wgslsmith_mult_u32(arg_1.a << (1u % 32u), ~arg_1.a) >> (_wgslsmith_sub_u32(~u_input.a, ~u_input.a) % 32u)), -853f, func_1(Struct_1(-607f, arg_1.c.b, arg_1.c.c)));
    let var_1 = countOneBits(-select(vec2<i32>(~u_input.b, -57824i), ~(~vec2<i32>(-46902i, u_input.b)), true));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.c.a)), _wgslsmith_div_f32(arg_1.b, var_0.b), _wgslsmith_f_op_f32(arg_1.c.a * arg_0.x), 1804f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.c.b, arg_0.x, -1550f, 1696f)))))), var_0.c.c.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, 619f, var_0.c.b, -1164f) - vec4<f32>(1708f, arg_0.x, 1786f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(294f, -166f, -110f, var_0.b) * vec4<f32>(arg_0.x, -149f, var_0.b, 135f)))))));
    var var_4 = !((max(_wgslsmith_dot_vec3_i32(vec3<i32>(-23814i, u_input.b, var_1.x), vec3<i32>(var_1.x, var_1.x, -10445i)), 0i) >> (((u_input.a << (0u % 32u)) << (u_input.a % 32u)) % 32u)) < var_1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(select(834f, 1253f, true))));
}

fn func_2(arg_0: u32, arg_1: f32) -> StorageBuffer {
    var var_0 = Struct_2(countOneBits(countOneBits(~(~arg_0))), _wgslsmith_f_op_f32(floor(arg_1)), Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_0, 2363f, Struct_1(439f, -367f, vec2<bool>(true, true))), vec4<bool>(false, true, false, true), true)), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(23905u, arg_0, arg_0, u_input.a), vec4<u32>(23611u, u_input.a, 52932u, 34460u)), 814f, func_1(Struct_1(724f, -1005f, vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(-199f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-161f)) * _wgslsmith_f_op_f32(1650f - arg_1))), vec2<bool>(any(vec3<bool>(true, true, true)), !(15997i < u_input.b))));
    var_0 = Struct_2(~(abs(~var_0.a) >> (arg_0 % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.b, -808f), _wgslsmith_div_f32(788f, arg_1))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, var_0.c.a))))), func_1(var_0.c));
    var_0 = Struct_2(_wgslsmith_add_u32(0u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(937f, 928f), arg_1) - _wgslsmith_f_op_f32(f32(-1f) * -733f))), var_0.c);
    let var_1 = ~(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 28242i, u_input.b), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -16654i), vec3<i32>(u_input.b, 20215i, 2147483647i))) << (min(vec3<u32>(u_input.a, 4294967295u, u_input.a), abs(vec3<u32>(arg_0, 40581u, 4294967295u))) % vec3<u32>(32u))) >> (max(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)), vec3<u32>(0u, firstTrailingBit(arg_0), ~var_0.a)), vec3<u32>(~1u, ~var_0.a, var_0.a)) % vec3<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1071f - _wgslsmith_div_f32(var_0.c.a, 852f)), 855f)));
    return StorageBuffer(reverseBits(var_1.xz) & _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-2147483647i, 1i)), vec2<i32>(u_input.b, 18285i)), vec2<i32>(~u_input.b, -2147483647i)), arg_0, _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(u_input.b, -2147483647i, -26565i, var_1.x)), 1i, u_input.b, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, u_input.b ^ var_1.x, abs(-1i), _wgslsmith_sub_i32(-2147483647i, -55744i)), firstTrailingBit(vec4<i32>(var_1.x, 16518i, -1i, 1i)) << (~vec4<u32>(242u, 9980u, 4294967295u, var_0.a) % vec4<u32>(32u))), abs(vec4<i32>(-1i, u_input.b & 0i, -63038i, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, -u_input.b > 56557i));
    let var_1 = Struct_2(firstTrailingBit(abs(_wgslsmith_mult_u32(u_input.a, u_input.a) >> (~u_input.a % 32u))), _wgslsmith_f_op_f32(abs(-1369f)), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(523f * -667f)), -641f, !(!vec2<bool>(false, var_0.x)))));
    let var_2 = func_1(func_1(Struct_1(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(-var_1.b)), var_1.b, !select(var_1.c.c, vec2<bool>(true, var_0.x), vec2<bool>(true, true)))));
    var var_3 = var_2.b;
    var_3 = 1728f;
    var_3 = _wgslsmith_f_op_f32(-var_1.c.b);
    let x = u_input.a;
    s_output = func_2(var_1.a, _wgslsmith_f_op_f32(-var_2.a));
}

