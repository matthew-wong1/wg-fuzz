struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_0, -1731f), vec3<f32>(arg_0, -1000f, -1797f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, arg_0, arg_0))), vec4<i32>(u_input.b.x, ~u_input.b.x, _wgslsmith_add_i32(u_input.d, u_input.d), u_input.b.x), countOneBits(abs(vec3<i32>(2147483647i, -61741i, u_input.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, 729f, arg_0, arg_0))), max(u_input.b.x, u_input.b.x) ^ u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)), firstLeadingBit(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 34072i, 1i), u_input.b.ywz), u_input.b.wyy, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -2519f, -573f, 122f) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_0, -1041f, arg_0)))), _wgslsmith_div_i32(u_input.d, -1i) & firstTrailingBit(-8670i)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(15771u, u_input.a, 0u, 23238u), vec4<u32>(4294967295u, u_input.a, 38050u, u_input.a)) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 1u, 63273u), vec4<u32>(u_input.a, u_input.c, 23857u, 3421u)), vec4<u32>(1u, firstTrailingBit(u_input.c), u_input.a, _wgslsmith_mult_u32(1u, u_input.c))), Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(395f - arg_0), -1071f), vec4<i32>(i32(-1i) * -1247i, firstTrailingBit(-2147483647i), u_input.b.x, firstLeadingBit(u_input.b.x)), vec3<i32>(_wgslsmith_add_i32(-1i, u_input.b.x), u_input.b.x, u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(step(arg_0, -1335f))), -52021i), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * 1276f), _wgslsmith_f_op_f32(round(arg_0)))))), _wgslsmith_div_f32(arg_0, 858f));
    var var_1 = true;
    var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f) * _wgslsmith_f_op_f32(min(1204f, -668f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f + -1000f))), all(!vec2<bool>(var_0.a.e, var_0.a.e)))) == 950f;
    var_1 = !var_0.a.e;
    var_0 = Struct_3(var_0.a, var_0.b, var_0.a.a.d.x);
    return var_0.a.d.d;
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1482f, -1000f, -1000f, -838f))), vec4<f32>(1050f, 561f, 1727f, 835f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-662f, _wgslsmith_f_op_f32(ceil(-2548f)), _wgslsmith_f_op_f32(-223f + 1674f), -1354f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(-942f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-203f, 620f, 381f, 1362f) - vec4<f32>(-135f, -236f, 304f, -390f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-630f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2303f * 1915f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -1809f));
    return Struct_2(Struct_1(var_0.wxw, select(u_input.b, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), u_input.b), true), ~min(countOneBits(vec3<i32>(u_input.b.x, u_input.b.x, u_input.d)), _wgslsmith_div_vec3_i32(u_input.b.zxz, u_input.b.yyx)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(187f, var_0.x, var_0.x, var_0.x))))), i32(-1i) * -_wgslsmith_mult_i32(u_input.b.x, u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(var_0.xxz, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(553f, 567f, var_0.x)))), _wgslsmith_f_op_vec4_f32(func_3(-391f)).wxx)), _wgslsmith_mod_vec4_i32(~u_input.b, countOneBits(vec4<i32>(6499i, 2147483647i, u_input.b.x, u_input.d))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.d, u_input.d), vec3<i32>(u_input.b.x, -1i, u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1615f, 457f, var_0.x))))), ~(~u_input.d)), ~4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * -778f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(var_0.zww - _wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, var_0.x, var_0.x))), vec3<bool>(arg_0, arg_1 && false, false))), u_input.b, ~u_input.b.xwx, _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 252f, _wgslsmith_f_op_f32(var_0.x * var_0.x), 424f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(func_3(var_0.x))))), ~(-1i)), all(vec4<bool>(true, arg_0, !(var_0.x < -310f), false)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_4) -> i32 {
    let var_0 = 757f;
    let var_1 = func_2(false, !arg_2.c);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f - 1528f) - _wgslsmith_div_f32(var_1.a.a.x, var_0));
    let var_3 = var_1.b.a.x;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1754f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-338f)) * _wgslsmith_f_op_f32(var_1.d.d.x * _wgslsmith_f_op_f32(var_1.b.d.x * 1374f)))));
    return i32(-1i) * -(~(~_wgslsmith_div_i32(u_input.d, var_1.a.e)));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = Struct_3(func_2(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)) && !all(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -2120f)))), _wgslsmith_f_op_f32(-arg_1));
    var var_1 = Struct_2(var_0.a.b, func_2(true, var_0.a.e).d, _wgslsmith_mod_u32(min((var_0.a.c & 25393u) >> (~1u % 32u), u_input.c | 4294967295u), u_input.c), func_2(u_input.c == (_wgslsmith_div_u32(var_0.a.c, var_0.a.c) & 0u), !all(!vec3<bool>(false, var_0.a.e, var_0.a.e))).a, var_0.a.e);
    let var_2 = Struct_3(func_2(true, all(vec3<bool>(!var_1.e, all(vec4<bool>(true, var_1.e, false, false)), var_0.a.e))), vec2<f32>(-1000f, arg_0), _wgslsmith_f_op_f32(ceil(-145f)));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(var_0.a.d.d.wx));
    var_0 = var_2;
    return func_2(firstTrailingBit(min(4294967295u << (var_1.c % 32u), _wgslsmith_clamp_u32(59657u, 7902u, 0u))) == (4294967295u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(17170u, 29978u), _wgslsmith_mult_u32(var_0.a.c, 83118u)) % 32u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-443f, 165f))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(step(-1747f, -555f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(478f * -2235f)))), _wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(151f, 1146f)) - -1386f)))));
    let var_1 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-536f, -865f))), _wgslsmith_f_op_f32(571f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))))), vec3<i32>(u_input.b.x, u_input.b.x, select(select(abs(u_input.d), -38289i, false), func_1(u_input.b.yx << (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)), select(vec4<u32>(u_input.a, 100589u, 4294967295u, u_input.c), vec4<u32>(4294967295u, u_input.c, 118678u, 0u), vec4<bool>(true, false, false, false)), Struct_4(Struct_2(Struct_1(vec3<f32>(-329f, 949f, -1348f), vec4<i32>(u_input.d, -2147483647i, 0i, 2147483647i), vec3<i32>(7187i, u_input.d, u_input.d), vec4<f32>(var_0.x, 412f, var_0.x, -464f), u_input.d), Struct_1(vec3<f32>(var_0.x, -1346f, var_0.x), u_input.b, u_input.b.xzw, vec4<f32>(253f, var_0.x, 1685f, -1000f), 2147483647i), 1u, Struct_1(vec3<f32>(var_0.x, var_0.x, -229f), vec4<i32>(-13983i, u_input.d, u_input.d, 0i), u_input.b.yww, vec4<f32>(114f, var_0.x, var_0.x, var_0.x), -2147483647i), false), vec3<bool>(false, false, false), true, -794f, true)), all(vec3<bool>(true, true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1019f, var_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -239f), -1272f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(201f, var_0.x, var_1.a.d.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_1.a.d.x, var_0.x) * var_1.b.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.d.wwz) + vec3<f32>(-495f, var_0.x, -215f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.a)))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(func_3(var_0.x)).x, _wgslsmith_f_op_f32(floor(-359f))));
    var_0 = var_1.d.a;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.a.x - var_1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -763f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-901f * _wgslsmith_div_f32(var_1.a.d.x, 604f)), -486f)), var_0.x);
    var_0 = var_1.b.d.xyy;
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(81026i, ~vec3<u32>(_wgslsmith_mod_u32(u_input.a >> (var_1.c % 32u), var_2.c), _wgslsmith_sub_u32(74044u << (0u % 32u), _wgslsmith_mod_u32(1u, u_input.c)), var_2.c & abs(29589u)), _wgslsmith_f_op_vec3_f32(-var_1.a.a), _wgslsmith_add_u32(firstLeadingBit(~u_input.c) << (var_2.c % 32u), 1u));
}

