struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(320f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-567f, -1231f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * -1000f), -2867f)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -108f, -570f)), vec3<f32>(392f, _wgslsmith_div_f32(550f, 598f), _wgslsmith_f_op_f32(select(691f, -370f, false))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f + 306f)), -1000f, _wgslsmith_f_op_f32(step(130f, _wgslsmith_f_op_f32(-1299f + 286f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + vec3<f32>(2157f, -1000f, 533f))))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1306f, -908f, var_0.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, -232f, 268f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-239f, var_0.x, var_0.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -1221f, 495f))))));
    var var_1 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(177f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x)));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(356f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-680f))), 1437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -234f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -435f) - -1000f), u_input.a > ~u_input.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 306f) - -1559f)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1954f, _wgslsmith_f_op_f32(var_0.x - 860f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(433f, var_0.x, -946f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, -472f, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-404f)))), var_0.x, 1370f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - var_0.x), 1391f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(-918f, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(499f, 338f, 720f))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(abs(var_0.x))))), var_1.yxx)));
    return -41331i;
}

fn func_2() -> vec2<bool> {
    var var_0 = Struct_1(572f, _wgslsmith_sub_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), abs(~(~vec4<i32>(29879i, u_input.a, -23060i, u_input.a)))));
    let var_1 = var_0.a;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a) * var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), true && (var_0.b.x == 2147483647i)))), vec4<i32>(~_wgslsmith_mult_i32(countOneBits(var_0.b.x), firstTrailingBit(var_0.b.x)), ~var_0.b.x, -40295i, -_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.yyx, vec3<i32>(var_0.b.x, u_input.a, var_0.b.x)), var_0.b.zyx)));
    var_0 = var_2;
    var_0 = Struct_1(_wgslsmith_f_op_f32(1244f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 1795f))))), vec4<i32>(max(_wgslsmith_mult_i32(15053i, 9977i), -_wgslsmith_sub_i32(var_2.b.x, -45861i)), var_0.b.x, reverseBits(2147483647i >> (1u % 32u)) & func_3(), firstTrailingBit(-(~2147483647i))));
    return !select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), !vec2<bool>(true, var_0.a <= -1000f), vec2<bool>(select(true, any(vec2<bool>(false, false)), true), false));
}

fn func_1() -> Struct_5 {
    let var_0 = 15050u;
    let var_1 = true;
    let var_2 = select(!(!(!func_2())), !func_2(), true);
    var var_3 = min(vec2<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, -3585i, u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-4016i, -38629i), vec2<i32>(u_input.a, u_input.a))) >> (var_0 % 32u)), vec2<i32>(32374i, -1i));
    let var_4 = select(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 12777i, 0i)), vec3<i32>(0i, 3037i, 1762i)), firstTrailingBit(~vec3<i32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-15814i, var_3.x), vec2<i32>(u_input.a, var_3.x))), reverseBits(vec3<i32>(var_3.x, -2147483647i, var_3.x) | vec3<i32>(1i, -3660i, u_input.a))), any(vec2<bool>(true, true))) | ~((_wgslsmith_div_vec3_i32(vec3<i32>(-10590i, u_input.a, 18803i), vec3<i32>(var_3.x, 16570i, u_input.a)) | abs(vec3<i32>(var_3.x, var_3.x, var_3.x))) << (vec3<u32>(var_0, 1u, var_0) % vec3<u32>(32u)));
    return Struct_5(select(vec3<bool>(true, select(var_2.x, false, var_2.x) | var_1, !(var_0 >= var_0)), select(select(select(vec3<bool>(var_1, true, var_1), vec3<bool>(var_1, false, var_2.x), var_2.x), vec3<bool>(false, false, var_2.x), vec3<bool>(var_2.x, var_2.x, var_1)), !vec3<bool>(var_2.x, false, false), vec3<bool>(var_3.x < 2147483647i, true, true)), vec3<bool>(any(vec2<bool>(var_1, true)) && true, var_1, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(1u, Struct_1(1490f, vec4<i32>(-2147483647i, firstLeadingBit(0i), -2147483647i, ~u_input.a | _wgslsmith_sub_i32(u_input.a, -56773i))), vec3<bool>(true, false, true), true, -222f);
    let var_1 = func_1();
    var var_2 = var_0.b.b.x;
    var_2 = -47676i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e, -393f, var_0.e, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, var_0.b.a, var_0.b.a, -497f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(139f, var_0.e, var_0.b.a, var_0.e)))), select(select(vec4<bool>(false, false, var_0.d, false), vec4<bool>(var_0.c.x, false, var_0.c.x, false), vec4<bool>(false, false, var_1.a.x, var_0.c.x)), vec4<bool>(true, false, var_0.c.x, true), var_0.a <= var_0.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, -364f, -422f, var_0.e) * vec4<f32>(-1000f, 256f, -1000f, 980f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e, var_0.e, var_0.e, var_0.b.a) * vec4<f32>(var_0.b.a, -1800f, 1771f, 1217f))))), vec4<u32>(~var_0.a | 0u, abs(~(~var_0.a)), var_0.a, var_0.a), var_0.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-23919i, reverseBits(-u_input.a), ~_wgslsmith_sub_i32(var_0.b.b.x, u_input.a)), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 3163i, 24621i) | vec3<i32>(u_input.a, 1i, 0i), var_0.b.b.wzy ^ vec3<i32>(var_0.b.b.x, -62911i, var_0.b.b.x))));
}

