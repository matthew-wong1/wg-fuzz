struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1871f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -343f), -146f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))) - -1585f));
    let var_1 = _wgslsmith_f_op_f32(-1315f - -668f);
    let var_2 = select(vec3<bool>(true & (u_input.a.x > (u_input.a.x | 73284i)), any(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)) | false, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false != (1i <= u_input.a.x)));
    var var_3 = select(!vec2<bool>(false, ~(-26927i) < u_input.a.x), select(var_2.yy, var_2.xx, vec2<bool>(!select(var_2.x, true, var_2.x), true)), var_2.x);
    let var_4 = _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-20807i, 13173i, -31571i, 6940i), vec4<i32>(u_input.a.x, u_input.a.x, 26598i, u_input.a.x) << (vec4<u32>(9207u, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(25005u, max(0u, 23386u), select(0u, 5883u, false), ~17668u) % vec4<u32>(32u)), vec4<i32>(select(-2147483647i, -9879i, var_2.x), i32(-1i) * -2147483647i, 29188i << (1u % 32u), ~(-1i)) | -_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, u_input.a.x, -21122i), vec4<i32>(11252i, -1i, 0i, -2147483647i))) ^ -_wgslsmith_sub_vec4_i32(-(~vec4<i32>(-22511i, u_input.a.x, -1i, u_input.a.x)), -vec4<i32>(-1i, -2147483647i, u_input.a.x, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_2) -> bool {
    let var_0 = firstLeadingBit(func_3());
    let var_1 = _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(2147483647i, -(reverseBits(var_0.x) >> (135568u % 32u)), ~(-56735i)));
    var var_2 = -max(vec2<i32>(0i, max(u_input.a.x, var_0.x) & u_input.a.x), u_input.a.zy);
    var_2 = countOneBits(vec2<i32>(-(~_wgslsmith_add_i32(1i, -28097i)), 0i));
    let var_3 = var_0.x;
    return all(select(!vec4<bool>(any(vec3<bool>(arg_1.x, true, false)), false, false, arg_3.e.d.x > -384f), !(!select(vec4<bool>(arg_0, false, false, arg_2), vec4<bool>(true, arg_0, arg_0, arg_3.b.b.x), true)), true));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool) -> vec3<f32> {
    var var_0 = u_input.a.x;
    var_0 = _wgslsmith_mult_i32(0i, -38189i);
    var_0 = u_input.a.x & -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstTrailingBit(4958i), 56430i, firstLeadingBit(2073i)), -(u_input.a.x ^ 2147483647i), -u_input.a.x);
    var_0 = -1410i;
    var var_1 = Struct_2(1i << (1u % 32u), Struct_1(-u_input.a, select(!select(vec2<bool>(false, arg_2), vec2<bool>(arg_1, arg_2), arg_1), !(!vec2<bool>(arg_2, arg_1)), !select(vec2<bool>(true, false), vec2<bool>(arg_2, true), vec2<bool>(arg_2, false))), ~arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 435f), _wgslsmith_f_op_f32(step(-371f, 183f)), _wgslsmith_f_op_f32(-726f + -1023f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-134f, -454f, -803f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-213f, 1123f, -674f)))), ~vec4<u32>(1u, 0u, ~51573u, ~arg_0)), all(vec4<bool>(arg_2 && arg_2, false, true, any(vec4<bool>(true, arg_2, true, true)))) | true, 567f, Struct_1(u_input.a, !select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(false, arg_1), vec2<bool>(arg_2, arg_1)), arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1679f, -1211f, -1000f)) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-863f)), _wgslsmith_f_op_f32(f32(-1f) * -1571f), _wgslsmith_f_op_f32(max(470f, -186f)))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 6394u, arg_0, 49416u), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, 0u), vec4<u32>(arg_0, arg_0, arg_0, arg_0)))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e.d - var_1.b.d), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.d, var_1.d, 142f)))))), vec3<f32>(_wgslsmith_f_op_f32(-1907f + _wgslsmith_f_op_f32(ceil(-1000f))), var_1.e.d.x, 980f));
}

fn func_1() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_4(~13194u, false, select(func_2(true, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true, Struct_2(u_input.a.x, Struct_1(vec3<i32>(-15378i, 5737i, u_input.a.x), vec2<bool>(false, false), 4294967295u, vec3<f32>(544f, 1628f, -317f), vec4<u32>(42688u, 1u, 4294967295u, 1u)), true, 2459f, Struct_1(u_input.a, vec2<bool>(true, false), 43208u, vec3<f32>(-1082f, 1013f, 532f), vec4<u32>(0u, 0u, 30218u, 3642u)))) | true, select(true, _wgslsmith_clamp_u32(1u, 0u, 0u) > 49163u, !(u_input.a.x == u_input.a.x)), true)));
    let var_1 = -min(vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 58548i)), -vec4<i32>(u_input.a.x, -1i, 7872i, u_input.a.x)), -28160i, u_input.a.x), reverseBits(~vec4<i32>(u_input.a.x, u_input.a.x, 397i, u_input.a.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(24460u, 1u, 17644u, 4294967295u), vec4<u32>(46993u, 26909u, 4294967295u, 1u)) % vec4<u32>(32u))));
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), select(countOneBits(vec4<u32>(87018u, 42329u, 1u, 0u)), vec4<u32>(6542u, 0u, 28294u, 35683u), all(vec3<bool>(true, true, true)))), 1u, ~(~(~0u) | _wgslsmith_clamp_u32(~26335u, reverseBits(0u), 4320u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0)) * var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1())));
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(17440i, 15220i, 1i, u_input.a.x)), vec4<i32>(1i, u_input.a.x, 40708i, u_input.a.x) ^ vec4<i32>(-14851i, u_input.a.x, -12656i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 6331i, u_input.a.x)), vec4<i32>(u_input.a.x, 27058i, 1i, u_input.a.x << (1u % 32u)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -22882i, -2147483647i, -30868i)), firstLeadingBit(func_3() << (vec4<u32>(4294967295u, ~18187u, ~4294967295u, firstLeadingBit(4294967295u)) % vec4<u32>(32u))));
    let var_2 = Struct_4(Struct_2(-u_input.a.x, Struct_1(u_input.a, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), 58937u, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, var_0.x, 1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)))), vec4<u32>(1u, 1u, 1u, 1u)), true & !(var_0.x <= var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f - var_0.x) - var_0.x) - var_0.x), Struct_1(max(~u_input.a, _wgslsmith_mult_vec3_i32(vec3<i32>(51140i, -10968i, u_input.a.x), u_input.a)), vec2<bool>(true, true), firstTrailingBit(46576u) | 12114u, var_0, firstLeadingBit(vec4<u32>(31335u, 98931u, 1u, 45045u)))), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_0.x))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_0.yx)))))), -125f, _wgslsmith_sub_vec3_i32(u_input.a, min(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(0i, u_input.a.x, -1i)), u_input.a), vec3<i32>(-24370i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 4304i, 0i, 1124i)), -2147483647i))));
    let var_3 = vec4<bool>(false, var_2.a.e.b.x, var_2.a.c, var_2.a.e.b.x);
    var var_4 = Struct_5(_wgslsmith_mod_vec2_u32(var_2.a.b.e.xz, var_2.a.b.e.ww), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, -384f, 420f, 1000f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 717f, 1000f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_2.a.e.d.x, 682f, -1121f))))))), _wgslsmith_clamp_u32(min(_wgslsmith_mod_u32(26851u, 47468u), var_2.a.b.e.x), var_2.a.e.e.x, max(var_2.a.e.c, 4294967295u | ~var_2.a.e.c)), _wgslsmith_div_vec3_f32(vec3<f32>(-1942f, 438f, _wgslsmith_f_op_vec3_f32(func_4(var_2.a.e.e.x, select(false, true, false), all(var_3.zxz))).x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a.b.d + vec3<f32>(var_2.c.x, 1943f, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(709f, 965f, -1000f))))));
    var_1 = ~var_2.e.x;
    var_4 = Struct_5(~vec2<u32>(4294967295u << (0u % 32u), var_2.a.b.e.x), var_4.b, firstLeadingBit(~(var_4.c & (44924u << (var_2.a.e.c % 32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-707f, 343f, -1361f) - vec3<f32>(1146f, var_2.d, 647f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1183f, -273f), vec3<f32>(272f, 2096f, var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(~(countOneBits(var_4.a) & var_4.a)), ~firstLeadingBit(~(-2147483647i)));
}

