struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    let var_0 = 62035i;
    let var_1 = vec4<u32>(1u, 30379u, ~u_input.c.x, max(8905u, 0u));
    let var_2 = vec3<bool>(!(-u_input.a.x < _wgslsmith_mod_i32(~(-40599i), -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-248f, -1000f, true)))) + _wgslsmith_f_op_f32(f32(-1f) * -1180f)) < -688f, all(vec2<bool>(true, true)));
    let var_3 = -(~(-(vec3<i32>(var_0, u_input.a.x, 0i) | (vec3<i32>(u_input.a.x, 2147483647i, var_0) << (vec3<u32>(u_input.c.x, 25993u, var_1.x) % vec3<u32>(32u))))));
    let var_4 = Struct_1(-322f, -max(vec3<i32>(~12681i, 0i, select(1i, var_0, var_2.x)), max(vec3<i32>(1i, -23975i, 2147483647i), _wgslsmith_div_vec3_i32(var_3, vec3<i32>(var_3.x, 2147483647i, -67267i)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.a), var_4.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = max(vec4<i32>(~min(u_input.a.x, 26339i), 1i, u_input.a.x, max(-2147483647i, ~u_input.b)), ~(vec4<i32>(arg_1.d.b.x, arg_1.b.x, arg_1.d.b.x, arg_1.d.b.x) | vec4<i32>(-19008i, 4835i, arg_1.d.b.x, -1i))) >> (vec4<u32>(1u, 109806u, u_input.c.x, 0u) % vec4<u32>(32u));
    var_0 = firstTrailingBit(vec4<i32>(abs(arg_1.d.b.x), ~var_0.x, -arg_1.d.b.x, 2147483647i));
    let var_1 = arg_1.d.a;
    var_0 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-(~var_0.x), -23084i, 1i, ~(i32(-1i) * -14328i)), vec4<i32>(reverseBits(reverseBits(-51372i)), (-63864i | u_input.b) >> (_wgslsmith_clamp_u32(1352u, u_input.c.x, 1u) % 32u), arg_1.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.d.b.x, -11878i, 0i, u_input.b), vec4<i32>(-2147483647i, u_input.a.x, u_input.b, var_0.x))));
    let var_2 = _wgslsmith_sub_i32(~min(-select(var_0.x, 0i, arg_1.a), -arg_1.d.b.x), u_input.a.x);
    return vec4<f32>(-755f, 1247f, 756f, _wgslsmith_f_op_f32(func_2()));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(125f, -1124f) + _wgslsmith_f_op_f32(1548f + -670f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(458f - -576f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1768f - 361f)), _wgslsmith_f_op_f32(f32(-1f) * -1363f)))), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a.x, u_input.b, u_input.b) >> (vec3<u32>(76035u, arg_0, arg_0) % vec3<u32>(32u))), vec3<i32>(-1i, 66569i, _wgslsmith_div_i32(u_input.b, -19853i))), ~_wgslsmith_add_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.b, u_input.a.x))));
    var var_1 = var_0.a;
    var var_2 = Struct_4(u_input.c.x);
    let var_3 = Struct_2(true, ~vec3<i32>(1i, -49355i, var_0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1799f, 871f)) * vec2<f32>(1776f, var_0.a)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), -1385f)), var_0);
    var var_4 = ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(30962i, -6832i, u_input.b), var_0.b), 6511i << (var_2.a % 32u), -1i, var_0.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.a.x, 33869i), -vec4<i32>(u_input.a.x, 24981i, -1i, -27170i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, var_3.d.b.x, u_input.b), vec4<i32>(var_0.b.x, -1i, var_3.d.b.x, 2147483647i))));
    return _wgslsmith_f_op_f32(-var_3.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-756f, 1000f, 923f, -855f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1204f, -100f, -1000f, -718f) - vec4<f32>(1000f, -1814f, 784f, 150f))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(vec3<bool>(true, true, true), Struct_2(false, vec3<i32>(u_input.a.x, -2147483647i, u_input.b), vec2<f32>(1000f, 242f), Struct_1(-349f, vec3<i32>(15458i, 25029i, 0i))), vec3<bool>(true, true, true))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(830f, 373f, 1847f, 340f), vec4<f32>(648f, 400f, 2391f, -1335f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-697f, -368f, -526f, -542f), vec4<f32>(-1289f, -418f, -634f, 275f))))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(22747u)), 473f, 1293f, _wgslsmith_f_op_f32(min(216f, -199f)))), vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = 123559u;
    var var_2 = _wgslsmith_mod_i32(-abs(-16137i), ~16760i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-714f + -1092f), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))), -701f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1576f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-107f, var_0.x, true)) - var_0.x)));
    let var_4 = Struct_1(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(552f + -123f) + _wgslsmith_f_op_f32(max(var_0.x, var_3.x))) * _wgslsmith_f_op_f32(f32(-1f) * -2464f))), firstLeadingBit(select(select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(955u, 86344u, var_1) % vec3<u32>(32u)), -vec3<i32>(-2147483647i, 1i, 0i), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)), vec3<i32>(u_input.a.x << (4294967295u % 32u), u_input.a.x, 14974i), select(u_input.c.x == 67570u, true, all(vec3<bool>(false, false, false))))));
    var var_5 = ~abs(2147483647i);
    var_5 = var_4.b.x;
    let var_6 = vec3<i32>(reverseBits(-min(-27411i, 0i) & _wgslsmith_mod_i32(countOneBits(u_input.b), -13050i)), 28650i, _wgslsmith_mult_i32(var_4.b.x, i32(-1i) * -23367i));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(54062u, 0u, firstLeadingBit(~0u)), ~vec3<u32>(6650u, abs(1u), 34444u & var_1), -435f);
}

