struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: i32, arg_3: i32) -> vec4<bool> {
    let var_0 = !vec4<bool>(true, !(u_input.e.x < _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 25579u, u_input.c.x), vec4<u32>(6607u, u_input.e.x, u_input.c.x, 4294967295u))), true, select(false, any(vec3<bool>(true, true, true)), true));
    var var_1 = _wgslsmith_div_f32(-1412f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(182f, 781f)))), _wgslsmith_f_op_f32(max(-1000f, -1000f)))));
    let var_2 = any(!var_0);
    var var_3 = Struct_2(Struct_1(select(select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, var_2, true, var_0.x), var_0.x), !var_0, var_0), vec4<bool>(all(var_0), any(vec4<bool>(var_0.x, var_2, false, false)), !var_2, var_0.x), false)), u_input.b, arg_2);
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -386f);
    return vec4<bool>(all(!(!select(var_0.yxx, vec3<bool>(true, false, var_3.a.a.x), true))), !var_3.a.a.x, all(var_3.a.a.wyy) || any(vec2<bool>(false, -1i >= u_input.a)), var_3.a.a.x);
}

fn func_2() -> Struct_3 {
    var var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))), vec4<bool>(true, true, true, true), select(!(!func_3(vec2<u32>(u_input.c.x, 48916u), -10253i, u_input.a, u_input.b)), vec4<bool>(-279f >= _wgslsmith_f_op_f32(step(-184f, 708f)), true, any(func_3(vec2<u32>(78354u, u_input.c.x), 2147483647i, u_input.d, 26035i).zw), true), false));
    var var_1 = -abs(abs(vec3<i32>(u_input.a, _wgslsmith_mult_i32(692i, -40831i), _wgslsmith_mod_i32(u_input.d, 25365i))));
    var var_2 = var_0.yyy;
    let var_3 = var_1.yx;
    var var_4 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, var_3.x <= -55058i, var_0.x, u_input.a > var_1.x), true)), _wgslsmith_mod_i32(-1446i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-9873i, -44922i, var_1.x, -36722i) >> (u_input.e % vec4<u32>(32u)), ~vec4<i32>(16632i, -33263i, var_1.x, 3498i)), -u_input.b)), abs(abs(var_3.x)));
    return Struct_3(var_4.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1465f + 764f), _wgslsmith_f_op_f32(ceil(-169f)))))), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x << (u_input.c.x % 32u), ~u_input.c.x), countOneBits(~vec2<u32>(4294967295u, 42486u)), ~(~u_input.e.zz)) << (vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x << (u_input.c.x % 32u), u_input.e.x), u_input.c.x) % vec2<u32>(32u)), 20705u);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    return arg_1.a;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = Struct_4(u_input.e, u_input.e.zxw, u_input.c.x);
    var var_1 = Struct_2(Struct_1(!vec4<bool>(true, true, true, !arg_0.a.x)), u_input.a, u_input.b);
    var_1 = Struct_2(arg_0, _wgslsmith_div_i32(-3005i, -1743i), countOneBits(max(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(0i, abs(8475i)))));
    let var_2 = abs(vec3<u32>(0u, 3326u, var_0.a.x) & (vec3<u32>(7540u, 2386u, reverseBits(u_input.e.x)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 0u), u_input.e.yxy) & vec3<u32>(u_input.e.x, var_0.a.x, var_0.c)) % vec3<u32>(32u))));
    var var_3 = var_1.a;
    return _wgslsmith_f_op_f32(-arg_1.x);
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(1364f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-292f)), _wgslsmith_f_op_f32(func_5(func_4(~(-33375i), func_2(), !vec4<bool>(false, false, arg_1.a.a.x, true), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 1i, arg_1.b), vec3<i32>(-29324i, arg_1.c, 2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1465f, 401f, -836f, -2084f) + _wgslsmith_div_vec4_f32(vec4<f32>(-100f, -1260f, 1593f, 1322f), vec4<f32>(280f, 1341f, -524f, -2283f))), u_input.e.x <= (130143u >> (arg_0 % 32u)))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1661f + _wgslsmith_f_op_f32(f32(-1f) * -834f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b) * -796f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -532f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(316f + 1838f), _wgslsmith_f_op_f32(min(764f, 730f)))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(553f))));
    let var_1 = func_4(_wgslsmith_div_i32(~arg_1.b, _wgslsmith_sub_i32(~(-16541i), _wgslsmith_mult_i32(u_input.d ^ u_input.d, u_input.b))), func_2(), arg_1.a.a, ~(-vec3<i32>(u_input.a, -2147483647i, 14930i)) >> (~u_input.e.wzy % vec3<u32>(32u)));
    let var_2 = !select(true, false, arg_1.a.a.x);
    return countOneBits(-(~vec4<i32>(u_input.a, 40989i, i32(-1i) * -1i, -u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, -1i, -1i, u_input.b), vec4<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a, -60561i), u_input.d, 1i)), func_1(18485u, Struct_2(Struct_1(vec4<bool>(false, true, false, true)), 2204i, _wgslsmith_add_i32(23618i, u_input.a)))));
    var var_1 = Struct_4(_wgslsmith_div_vec4_u32(u_input.e, ~_wgslsmith_mod_vec4_u32(vec4<u32>(1205u, u_input.e.x, 1u, 57539u), ~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 1u))), u_input.e.wxw, _wgslsmith_sub_u32(u_input.e.x, 0u));
    let var_2 = var_0.yy;
    var_1 = Struct_4(firstTrailingBit(~abs(var_1.a)), vec3<u32>(1u, countOneBits(~countOneBits(u_input.c.x)), _wgslsmith_div_u32(u_input.c.x, var_1.b.x)), ~(~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wwz, u_input.e.x, 5073u, _wgslsmith_f_op_f32(294f - _wgslsmith_f_op_f32(-1021f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)))), vec4<u32>(3775u, u_input.c.x, _wgslsmith_mult_u32(~var_1.a.x, var_1.b.x), reverseBits(u_input.c.x)) ^ abs(u_input.e));
}

